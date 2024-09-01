from django import template
from accounts_app import models

register = template.Library()

@register.filter(name='module_list')
def module_load(employee_id):
    modules = models.UserAccessControl.objects.raw('select uac.id, menu.module_name as module_name,  menu.menu_icon as menu_icon from user_access_control uac inner join menu_list menu on menu.id = uac.menu_id where uac.status = true and uac.user_id = %s group by menu.module_name order by menu.module_order asc', [employee_id])
    if modules: return modules    
    else:return None 

@register.filter(name='menu_list')
def menu_load(employee_id, module_name):
    menus = models.UserAccessControl.objects.filter(user_id = employee_id, menu_id__module_name = module_name, menu_id__status = True).order_by("menu_id__menu_order")
    if menus: return menus    
    else: return None

# @register.filter(name='shop_profile')
# def shop_profile_load(request):
#     profile = models.ShopProfile.objects.filter(status=True)
#     if profile:
#         return profile
  
