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
    student_id = models.CharField(max_length=30, unique=True)
    roll = models.CharField(max_length=50, unique=True)
    reg_no = models.CharField(max_length=50, unique=True)
    date_of_birth = models.DateField()
    email = models.EmailField(unique=True)
    phone_number = models.CharField(max_length=15, blank=True, null=True)
    address = models.TextField(blank=True, null=True) 
    father_name = models.CharField(max_length=100)
    mother_name = models.CharField(max_length=100)
    guardian_name = models.CharField(max_length=100)
    status        = models.BooleanField(default=True) 
    created       = models.DateTimeField(auto_now=True)  

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

    class Meta:
        db_table = 'student_list'



class FinancialHead(models.Model): 
    text_id = models.CharField(max_length=32, unique=True, db_index=True)
    head_name = models.CharField(max_length=100) 
    description = models.TextField(blank=True, null=True)
    rank          = models.IntegerField(default=0) 
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=False, null=True, blank=True)
    status        = models.BooleanField(default=True) 

    def __str__(self):
        return f"{self.head_name}"

    class Meta:
        db_table = 'financial_head'
        verbose_name = 'Financial Head'
        verbose_name_plural = 'Financial Heads'

class ChartOfAccounts(models.Model): 
    financial_head  = models.ForeignKey(FinancialHead, on_delete=models.CASCADE)  
    text_id         = models.CharField(max_length=32, unique=True, db_index=True)
    chart_name      = models.CharField(max_length=150)
    description     = models.TextField(blank=True, null=True)
    rank            = models.IntegerField(default=0)  
    created         = models.DateTimeField(auto_now_add=True)
    updated         = models.DateTimeField(auto_now=False, null=True, blank=True)
    status        = models.BooleanField(default=True) 

    def __str__(self):
        return f"{self.chart_name}"

    class Meta:
        db_table = 'chart_of_accounts'
        verbose_name = 'Chart of Account'
        verbose_name_plural = 'Chart of Accounts'
        unique_together = ('text_id', 'financial_head')



class ClassWiseFeeSetup(models.Model): 
    class_name   = models.ForeignKey(ClassList, on_delete=models.CASCADE)  
    year         = models.CharField(max_length=32)
    fees_head    = models.ForeignKey(ChartOfAccounts, on_delete=models.CASCADE) 
    amount       = models.IntegerField(blank=True, null=True) 
    created      = models.DateTimeField(auto_now_add=True)
    updated      = models.DateTimeField(auto_now=False, null=True, blank=True)
    status       = models.BooleanField(default=True) 

    def __str__(self):
        return f"{self.fees_head.chart_name}"

    class Meta:
        db_table = 'class_wise_fee_setup' 
        verbose_name_plural = 'Class Wise Fee Setup' 



# class StudentFee(models.Model):
#     class_wise_fee              = models.ForeignKey(ClassWiseFeeSetup, on_delete=models.CASCADE, blank = True, null = True)
#     stid                        = models.ForeignKey(Student, on_delete=models.CASCADE)
#     fee_type                    = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
#     version_name                = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
#     class_name                  = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
#     shift_name                  = models.ForeignKey(Shift, on_delete=models.CASCADE)
#     section_name                = models.ForeignKey(Section, on_delete=models.CASCADE, blank=True, null=True)
#     group_type                  = models.ForeignKey(GroupTypeList, on_delete = models.CASCADE, blank=True, null=True)
#     year                        = models.ForeignKey(Years, on_delete=models.CASCADE)
#     exam_name                   = models.ForeignKey(ExamInfo, on_delete=models.CASCADE, blank = True, null = True)
#     exam_payable_amount         = models.FloatField(default = 0) 
#     installment_name            = models.ForeignKey(Installment, on_delete=models.CASCADE, blank = True, null = True) #Installment wise fee collection will complete later
#     installment_payable_amount  = models.FloatField(default = 0)#This logic is noted down and Saddam vai knows it
#     fee_amount                  = models.FloatField(default = 0)
#     due_amount                  = models.FloatField(default = 0)
#     discount_amount             = models.FloatField(default = 0)
#     due_date                    = models.DateField(auto_now_add=False, blank = True, null = True)
#     insert_date                 = models.DateTimeField(auto_now_add=True)
#     last_update                 = models.DateTimeField(auto_now=True)
#     insert_by                   = models.IntegerField(default=0)
#     update_by                   = models.IntegerField(default=0)    
#     status                      = models.BooleanField(default=0)

#     def __str__(self):
#         return str(self.stid)

#     class Meta:
#         db_table = 'student_fee' 
#         verbose_name = "Student Fee"
#         verbose_name_plural = "Student Fees"






