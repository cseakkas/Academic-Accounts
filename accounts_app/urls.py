from django.urls import path
from . import views

urlpatterns = [
    path('adminlogin/', views.dashboardLogin, name="dashboardLogin"),
    path('adminlogout/', views.admin_logout, name="admin_logout"),
    path('', views.dashboardPage, name="dashboardPage"),
    path('accessDeny', views.accessDeny, name="accessDeny"),

    # Settings Url list 
    path('settings/class-add/', views.classAdd, name="classAdd"),
    path('settings/class-list/', views.classList, name="classList"),
    path('settings/class/delete/<str:text_id>/', views.classDelete, name="classDelete"),
    
    path('settings/student-add/', views.studentAdd, name="studentAdd"),
    path('settings/student-list/', views.studentList, name="studentList"),
    path('settings/student/<int:id>/edit/', views.studentUpdate, name="studentUpdate"),
    path('settings/student/<str:student_id>/details/', views.studentDetails, name="studentUpdate"),
    path('settings/student/<str:student_id>/print/', views.print_student_profile, name='print_student_profile'),
    path('settings/export-students/', views.export_students_xlsx, name='export_students_xlsx'),

    path('settings/chart-of-accounts-add/', views.ChartOfAccountsAdd, name="ChartOfAccountsAdd"),
    path('settings/chart-of-accounts-list/', views.ChartOfAccountsList, name="ChartOfAccountsList"),
    path('settings/students-fees-setup/', views.StudentsFeesSetup, name="StudentsFeesSetup"),
    path('settings/students-fees-setup-list/', views.StudentsFeesSetupList, name="StudentsFeesSetupList"),
    
    path('settings/access-control-add/', views.AccessControlAdd, name="AccessControlAdd"),
    path('settings/access-control-list/', views.AccessControlList, name="AccessControlList"),


    path('users/user-add/', views.usersAdd, name="usersAdd"),
    path('users/user-list/', views.usersList, name="usersList"),
    path('users/user/<int:id>/delete/', views.usersDelete, name="usersDelete"),
    path('users/user/<int:id>/edit/', views.usersUpdate, name="usersUpdate"),


    path('students/fee-collection/', views.studentsFeeCollection, name='studentsFeeCollection'),
    path('students/fee-collection-list/', views.studentFeeCollectionList, name='feestudentFeeCollectionList_list'),
    path('students/fee-collection-invoice/', views.studentFeeCollectionInvoice, name='studentFeeCollectionInvoice'),


    

]
