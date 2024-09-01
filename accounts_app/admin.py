from django.contrib import admin
from . import models
 
     
class UserRegistrationAdmin(admin.ModelAdmin):
    list_display  = ['full_name', 'email', 'mobile', 'designation', 'username', 'password', 'status']
    search_fields = ['full_name', 'email',]
     
     
class MenuListAdmin(admin.ModelAdmin):
    list_display  = ['menu_name', 'menu_url', 'module_name',  'module_order', 'status']
    search_fields = ['menu_name', 'module_types',]
     
class UserAccessControlAdmin(admin.ModelAdmin):
    list_display  = ['menu', 'user', 'view_action', 'insert_action', 'update_action', 'delete_action', 'status']
    search_fields = ['menu', 'user',]



admin.site.register(models.UserRegistration, UserRegistrationAdmin) 
admin.site.register(models.MenuList, MenuListAdmin) 
admin.site.register(models.UserAccessControl, UserAccessControlAdmin) 