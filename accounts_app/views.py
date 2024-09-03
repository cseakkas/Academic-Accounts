from django.shortcuts import render, redirect
from . import models 
from accounts_app.decorators import UserLogin
# Create your views here.

  
def check_user_permission(request, menu_url):
    chk_privilege    = models.UserAccessControl.objects.filter(user_id = int(request.session.get("user_id")), menu_id__menu_url = menu_url, menu_id__status = True, status = True).first()
    
    if chk_privilege: return chk_privilege
    else: None

def dashboardLogin(request):
    if request.session.get('user_id'):
        return redirect('/')
 
    if request.method == "POST":
        get_data = models.UserRegistration.objects.filter(email = request.POST['userEmail'], password = request.POST['userPassword']).first()
        if get_data:
            request.session['user_id'] = get_data.id
            request.session['user_email'] = get_data.email
            request.session['first_name'] = get_data.first_name
            request.session['user_name'] = get_data.full_name
            request.session['user_photo'] = str(get_data.photo)
            return redirect('/')
        else:
            return redirect('/adminlogin/') 

 
    return render(request, "dashboard/login.html")

def admin_logout(request):  
    request.session['user_id'] = False
    return redirect('/adminlogin/')


@UserLogin
def dashboardPage(request):
    # chk_permission   = check_user_permission(request,'/book-category-entry/')
    # if chk_permission and chk_permission.view_action and chk_permission.insert_action: 


    # else:
    #     return redirect('/accessDeny')

    return render(request, "dashboard/index.html")
@UserLogin
def accessDeny(request):   
    return render(request, 'dashboard/access_deny.html')

@UserLogin
def classAdd(request): 

    return render(request, 'dashboard/settings/class_add.html')

@UserLogin
def classList(request): 

    return render(request, 'dashboard/settings/class_list.html')

@UserLogin
def studentList(request): 

    return render(request, 'dashboard/settings/student_list.html')


@UserLogin
def ChartOfAccountsAdd(request): 

    return render(request, 'dashboard/settings/chart_of_accounts_add.html')


@UserLogin
def ChartOfAccountsList(request): 

    return render(request, 'dashboard/settings/chart_of_accounts_list.html')
 
@UserLogin
def StudentsFeesSetup(request): 

    return render(request, 'dashboard/settings/students_fees_setup.html')


    
@UserLogin
def StudentsFeesSetupList(request): 

    return render(request, 'dashboard/settings/students_fees_setup_list.html')

    
@UserLogin
def AccessControlAdd(request): 
    user_id = request.session.get('user_id')
    
    user_list = models.UserRegistration.objects.all()

    if request.method == 'POST':
        user_name_id = request.POST.get('user_name_id')

        access_list = models.UserAccessControl.objects.filter(user_id=user_name_id)
        context = {
            'access_list':access_list,
            'user_list':user_list,
            'user_name_id':int(user_name_id),
        }
        return render(request, 'dashboard/settings/access_controll_add.html', context)
    else: 
        access_list = models.UserAccessControl.objects.filter(user_id=user_id)
        context = {
            'access_list':access_list,
            'user_list':user_list,
        }
        return render(request, 'dashboard/settings/access_controll_add.html', context)


    