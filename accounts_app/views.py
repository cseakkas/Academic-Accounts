from django.shortcuts import render, redirect
from . import models 
from django.contrib import messages
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
    if request.method == 'POST':
        class_name = request.POST.get('class_name')
        text_id = class_name.replace(" ", "").lower()
        short_name = request.POST.get('short_name')
        rank = request.POST.get('rank')

        chk_exist = models.ClassList.objects.filter(text_id=text_id).first()
        if not chk_exist:
            class_obj = models.ClassList(
                class_name=class_name, text_id=text_id,
                short_name=short_name, rank=rank
            )
            class_obj.save() 
            return redirect('/settings/class-list/')
        else: 
            messages = f'Class with this name already exists!'
            return render(request, 'dashboard/settings/class_add.html', {'messages': messages})
    return render(request, 'dashboard/settings/class_add.html')

@UserLogin
def classList(request): 
    classes = models.ClassList.objects.filter(status=True).order_by('rank')
     
    return render(request, 'dashboard/settings/class_list.html', {'classes': classes})
 

@UserLogin
def classDelete(request, text_id):   
    text_id = text_id
    print(text_id)
    classes = models.ClassList.objects.filter(text_id=text_id).first()
    if classes:
        print("4444444444444444")
        classes.delete() 
        return redirect('/settings/class-list/')
    else: 
        return redirect('/settings/class-list/')
         
 

@UserLogin
def studentAdd(request): 

    class_list = models.ClassList.objects.filter(status=True).order_by('rank')
    
    if request.method == 'POST':
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        roll = request.POST.get('roll')
        reg_no = request.POST.get('reg_no')
        date_of_birth = request.POST.get('date_of_birth')
        email = request.POST.get('email')
        phone_number = request.POST.get('phone_number')
        address = request.POST.get('address')
        class_name_id = request.POST.get('class_name')
        father_name = request.POST.get('father_name')
        mother_name = request.POST.get('mother_name')
        guardian_name = request.POST.get('guardian_name')

        # Save the new student
        student_obj = models.StudentList(
            first_name=first_name,
            last_name=last_name,
            roll=roll,
            reg_no=reg_no,
            date_of_birth=date_of_birth,
            email=email,
            phone_number=phone_number,
            address=address,
            class_name_id=class_name_id,
            father_name=father_name,
            mother_name=mother_name,
            guardian_name=guardian_name
        )
        student_obj.save() 
        return redirect('/settings/student-list/')

    return render(request, 'dashboard/settings/student_add.html', {'class_list': class_list})

@UserLogin
def studentList(request):
    student_list = models.StudentList.objects.all().order_by('id') 

    return render(request, 'dashboard/settings/student_list.html',{'student_list': student_list})


@UserLogin
def ChartOfAccountsAdd(request): 
    head_list = models.FinancialHead.objects.filter(status=True).order_by('rank')
    
    if request.method == 'POST':
        head_types_id = request.POST.get('head_types')
        chart_name = request.POST.get('chart_name')
        description = request.POST.get('description')
        rank = request.POST.get('rank')

        # generate textId from chart_name
        text_id = chart_name.replace(" ", "").lower()

        # Save the new head 
        instantce = models.ChartOfAccounts(
            financial_head_id=head_types_id, text_id = text_id,
            chart_name=chart_name, description=description, rank=rank
        )
        instantce.save() 
        return redirect('/settings/chart-of-accounts-list/')

    context = {
        'head_list': head_list,
    }
    return render(request, 'dashboard/settings/chart_of_accounts_add.html', context)


@UserLogin
def ChartOfAccountsList(request): 
    data_list = models.ChartOfAccounts.objects.filter(status=True)

    context = {
        'data_list': data_list,
    }
    return render(request, 'dashboard/settings/chart_of_accounts_list.html', context)
 
@UserLogin
def StudentsFeesSetup(request):  
    class_list = models.ClassList.objects.filter(status=True).order_by('rank')
    data_list = models.ChartOfAccounts.objects.filter(status=True)
    year_list = ["2022", "2023", "2024", "2025", "2026"] 

    context = {
        'class_list': class_list,
        'data_list': data_list, 
        'year_list': year_list, 
    }

    return render(request, 'dashboard/settings/students_fees_setup.html', context)


    
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


    
    
@UserLogin
def AccessControlList(request): 
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
        return render(request, 'dashboard/settings/access_controll_list.html', context)
    else: 
        access_list = models.UserAccessControl.objects.filter(user_id=user_id)
        context = {
            'access_list':access_list,
            'user_list':user_list,
        }
        return render(request, 'dashboard/settings/access_controll_list.html', context)


    