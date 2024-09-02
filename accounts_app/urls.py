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
    path('settings/student-list/', views.studentList, name="studentList"),
    path('settings/chart-of-accounts-add/', views.ChartOfAccountsAdd, name="ChartOfAccountsAdd"),
    path('settings/chart-of-accounts-list/', views.ChartOfAccountsList, name="ChartOfAccountsList"),
    path('settings/students-fees-setup/', views.StudentsFeesSetup, name="StudentsFeesSetup"),
    

]
