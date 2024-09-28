from django.db import models

# Create your models here.


class UserRegistration(models.Model):
    first_name  = models.CharField(max_length=65, blank = True)
    last_name   = models.CharField(max_length=65, blank = True)
    full_name   = models.CharField(max_length=130, blank = True)
    email       = models.CharField(max_length=130, unique = True)
    mobile      = models.CharField(max_length=50, blank = True)
    mobile2     = models.CharField(max_length=50, blank = True)
    designation = models.CharField(max_length=60, blank = True)
    photo       = models.ImageField(upload_to='user_progile', blank = True)   
    username    = models.CharField(max_length=65)
    password    = models.CharField(max_length=100)
    created     = models.DateTimeField(auto_now_add = True)
    status      = models.BooleanField(default=True)
    
    def __str__(self):
        return self.full_name

    class Meta:
        db_table = 'user_list'
        verbose_name = 'User Registration'
        verbose_name_plural = 'User Registration List'
 


class MenuList(models.Model):
    menu_name   = models.CharField(max_length=50)
    menu_url    = models.CharField(max_length=90)
    module_types = (
        ('Students', 'Students'),
        ('Reports', 'Reports'),
        ('Academic', 'Academic'),
        ('Settings', 'Settings'), 
        ('Users', 'Users'), 
    )
    module_name      = models.CharField(max_length=50, choices=module_types)
    module_order     = models.IntegerField(default=0)
    menu_order       = models.IntegerField(default=0)
    menu_icon        = models.CharField(max_length=50,blank=True)
    background_color = models.CharField(max_length=30,blank=True)
    font_color       = models.CharField(max_length=30,blank=True)
    is_dashboard     = models.BooleanField(default=False)
    created_by       = models.ForeignKey(UserRegistration, on_delete = models.DO_NOTHING, blank=True, null=True)
    modified_by      = models.IntegerField(blank=True, null=True)
    created          = models.DateTimeField(auto_now_add=True, null=True)
    modified         = models.DateTimeField(auto_now=True, null=True)
    status           = models.BooleanField(default=True)

    def __str__(self):
        return self.menu_name

    class Meta:
        db_table = 'menu_list'
        verbose_name = "Menu"
        verbose_name_plural = "Menu List"  


class UserAccessControl(models.Model):
    user            = models.ForeignKey(UserRegistration, on_delete = models.DO_NOTHING, null=True) 
    menu            = models.ForeignKey(MenuList, on_delete = models.DO_NOTHING, null=True)
    view_action     = models.BooleanField(default=0)      
    insert_action   = models.BooleanField(default=0)      
    update_action   = models.BooleanField(default=0)      
    delete_action   = models.BooleanField(default=0)   
    permission_date = models.DateTimeField(auto_now_add=True)
    permitted_by    = models.BigIntegerField(default=0)
    insert_date     = models.DateTimeField(auto_now_add=True)
    last_update     = models.DateTimeField(auto_now=True)
    insert_by       = models.IntegerField(default=0)
    update_by       = models.IntegerField(default=0) 
    status          = models.BooleanField(default=True)   
    
    def __str__(self):
        return str(self.user)   
        
    class Meta:
        db_table = 'user_access_control'
        verbose_name = "Access Control"
        verbose_name_plural = "User Access Control"                


class ClassList(models.Model):
    text_id       = models.CharField(max_length=32, unique=True)
    class_name    = models.CharField(max_length=50)
    short_name    = models.CharField(max_length=10)
    rank          = models.IntegerField(default=0) 
    status        = models.BooleanField(default=True) 
    created       = models.DateTimeField(auto_now=True)  
    
    def __str__(self):
        return str(self.class_name)   
        
    class Meta:
        db_table = 'class_list'
        verbose_name = "Class List"
        verbose_name_plural = "ClassList"                
 

class StudentList(models.Model):
    class_name = models.ForeignKey(ClassList, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    roll = models.CharField(max_length=50, unique=True)
    reg_no = models.CharField(max_length=50, unique=True)
    date_of_birth = models.DateField()
    email = models.EmailField(unique=True)
    phone_number = models.CharField(max_length=15, blank=True, null=True)
    address = models.TextField(blank=True, null=True) 
    father_name = models.CharField(max_length=100)
    mother_name = models.CharField(max_length=100)
    guardian_name = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

    class Meta:
        db_table = 'student_list'