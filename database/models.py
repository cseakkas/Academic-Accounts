from django.db import models
import datetime
from django.utils import timezone

from settingsapp.models import (
    SchoolVersion,ClassInfo,Shift,Section, GroupTypeList, SessionInfo,Years,Designation, ExamInfo, StudentCategory,
)
from employeeapp.models import(
    EmployeeList
)
from studentapp.models import (
    Student
)

class FeeGroup(models.Model):
    group_name  = models.CharField(max_length=50, unique=True)
    insert_date = models.DateTimeField(auto_now_add=True)
    last_update = models.DateTimeField(auto_now=True)
    insert_by   = models.IntegerField(default=0)
    update_by   = models.IntegerField(default=0)    
    status      = models.BooleanField(default=1)

    def __str__(self):
        return self.group_name

    class Meta:
        verbose_name = "Fee Group"
        verbose_name_plural = "Fee Groups"

class FeeTypes(models.Model):
    fee_type    = models.CharField(max_length=50, unique=True)
    fee_group   = models.ForeignKey(FeeGroup, on_delete=models.CASCADE, blank=True, null=True)
    insert_date = models.DateTimeField(auto_now_add=True)
    last_update = models.DateTimeField(auto_now=True)
    insert_by   = models.IntegerField(default=0)
    update_by   = models.IntegerField(default=0)    
    is_transport= models.BooleanField(default=0)
    status      = models.BooleanField(default=1)

    def __str__(self):
        return self.fee_type

    class Meta:
        verbose_name = "Fee Type"
        verbose_name_plural = "Fee Types"


class Installment(models.Model):
    installment_name = models.CharField(max_length=80, unique=True)
    short_name       = models.CharField(max_length=50, unique=True)
    ordering         = models.IntegerField(default=0, blank=True)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=1)

    def __str__(self):
        return self.installment_name

    class Meta:
        verbose_name = "Installment"
        verbose_name_plural = "Fee Installments"

class ClassWiseFeeSetup(models.Model):
    fee_type     = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
    version_name = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name   = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    shift_name   = models.ForeignKey(Shift, on_delete=models.CASCADE)
    group_type   = models.ForeignKey(GroupTypeList, on_delete = models.CASCADE, blank=True, null=True)
    year         = models.ForeignKey(Years, on_delete=models.CASCADE)
    apply_for = (
        ('all_st', 'All Student'),
        ('promot_st', 'Promoted Student'),
        ('new_st', 'New Student'),
        ('transp_st', 'Transport Student'),
        ('residen_st', 'Residence Student'),
        ('others', 'Others'),
    ) 
    applied_to   = models.CharField(max_length = 15, choices = apply_for)
    fee_amount   = models.FloatField(default=0)
    late_amount  = models.FloatField(default=0)
    fee_priority = models.IntegerField(default=0)
    fee_percent  = models.IntegerField(default=0)
    start_date   = models.DateField(auto_now_add=False,blank=True,null=True)
    end_date     = models.DateField(auto_now_add=False,blank=True,null=True)
    insert_date  = models.DateTimeField(auto_now_add=True)
    last_update  = models.DateTimeField(auto_now=True)
    insert_by    = models.IntegerField(default=0)
    update_by    = models.IntegerField(default=0)    
    status       = models.BooleanField(default=1)

    def __unicode__(self):
        return str(self.fee_type)

    class Meta:
        verbose_name = "Fee Setup"
        verbose_name_plural = "Class Wise Fee Setups"
  
class StudentFee(models.Model):
    class_wise_fee              = models.ForeignKey(ClassWiseFeeSetup, on_delete=models.CASCADE, blank = True, null = True)
    stid                        = models.ForeignKey(Student, on_delete=models.CASCADE)
    fee_type                    = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
    version_name                = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name                  = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    shift_name                  = models.ForeignKey(Shift, on_delete=models.CASCADE)
    section_name                = models.ForeignKey(Section, on_delete=models.CASCADE, blank=True, null=True)
    group_type                  = models.ForeignKey(GroupTypeList, on_delete = models.CASCADE, blank=True, null=True)
    year                        = models.ForeignKey(Years, on_delete=models.CASCADE)
    exam_name                   = models.ForeignKey(ExamInfo, on_delete=models.CASCADE, blank = True, null = True)
    exam_payable_amount         = models.FloatField(default = 0) 
    installment_name            = models.ForeignKey(Installment, on_delete=models.CASCADE, blank = True, null = True) #Installment wise fee collection will complete later
    installment_payable_amount  = models.FloatField(default = 0)#This logic is noted down and Saddam vai knows it
    fee_amount                  = models.FloatField(default = 0)
    due_amount                  = models.FloatField(default = 0)
    discount_amount             = models.FloatField(default = 0)
    due_date                    = models.DateField(auto_now_add=False, blank = True, null = True)
    insert_date                 = models.DateTimeField(auto_now_add=True)
    last_update                 = models.DateTimeField(auto_now=True)
    insert_by                   = models.IntegerField(default=0)
    update_by                   = models.IntegerField(default=0)    
    status                      = models.BooleanField(default=0)

    def __str__(self):
        return str(self.stid)

    class Meta:
        verbose_name = "Student Fee"
        verbose_name_plural = "Student Fees"

class CategoryWiseFeeSetting(models.Model):
    version_name        = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name          = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    year                = models.ForeignKey(Years, on_delete=models.CASCADE)
    category_name       = models.ForeignKey(StudentCategory, on_delete=models.CASCADE)
    fee_type            = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
    fee_amount          = models.FloatField(default = 0)
    insert_date         = models.DateTimeField(auto_now_add=True)
    last_update         = models.DateTimeField(auto_now=True)
    insert_by           = models.IntegerField(default=0)
    update_by           = models.IntegerField(default=0)    
    status              = models.BooleanField(default=1)

    def __str__(self):
        return str(self.fee_type)

    class Meta:
        verbose_name = "Category Wise Fee Setting"
        verbose_name_plural = "Category Wise Fee Settings"

class CollectedFee(models.Model):
    money_receipt           = models.BigIntegerField(default=0)
    stid                    = models.ForeignKey(Student, on_delete=models.CASCADE)
    employee_name           = models.ForeignKey(EmployeeList, on_delete=models.CASCADE)
    fee_type                = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
    version_name            = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name              = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    shift_name              = models.ForeignKey(Shift, on_delete=models.CASCADE)
    group_type              = models.ForeignKey(GroupTypeList, on_delete = models.CASCADE, blank = True, null = True)
    year                    = models.ForeignKey(Years, on_delete=models.CASCADE)
    exam_name               = models.ForeignKey(ExamInfo, on_delete=models.CASCADE, blank = True, null = True)
    exam_paid_amount        = models.FloatField(default = 0)    
    installment_name        = models.ForeignKey(Installment, on_delete=models.CASCADE, blank = True, null = True)
    installment_paid_amount = models.FloatField(default = 0)    
    receive_types = (
        ('1', 'Cash'),
        ('2', 'Cheque'),
    ) 
    receive_type            = models.CharField(max_length = 2, choices = receive_types)
    cheque_number           = models.CharField(max_length = 15)
    reference_number        = models.CharField(max_length = 20)
    paid_amount             = models.FloatField(default=0)
    collection_date         = models.DateField(default = timezone.now)
    insert_date             = models.DateTimeField(auto_now_add=True)
    last_update             = models.DateTimeField(auto_now=True)
    insert_by               = models.IntegerField(default=0)
    update_by               = models.IntegerField(default=0)    
    status                  = models.BooleanField(default=0)

    def __unicode__(self):
        return str(self.stid)

    class Meta:
        verbose_name = "Collected Fee"
        verbose_name_plural = "Collected Fees"

class FeePaymentByMobile(models.Model):
    stid            = models.ForeignKey(Student, on_delete=models.CASCADE)
    version_name    = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name      = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    shift_name      = models.ForeignKey(Shift, on_delete=models.CASCADE)
    section_name    = models.ForeignKey(Section, on_delete=models.CASCADE)
    pay_type = (
        ('1', 'Bkash'),
        ('2', 'DBBL'),
    )
    payment_type    = models.CharField(max_length=2, choices=pay_type)   
    payment_amount  = models.IntegerField(default=0)
    payment_mobile  = models.CharField(max_length=15, blank=True)
    transaction_id  = models.CharField(max_length=15)
    payment_date    = models.DateTimeField(auto_now_add=True)
    confirm_by      = models.CharField(max_length = 80, blank =True)
    insert_date     = models.DateTimeField(auto_now_add=True)
    last_update     = models.DateTimeField(auto_now=True)
    insert_by       = models.IntegerField(default=0)
    update_by       = models.IntegerField(default=0)    
    status          = models.BooleanField(default=0)

    def __str__(self):
        return str(self.stid)

    class Meta:
        verbose_name = "Fee Payment By Mobile"
        verbose_name_plural = "Add Fee Payment By Mobile"

class BalanceCardInfo(models.Model):
    card_number     = models.CharField(max_length = 20, unique = True)
    card_amount     = models.IntegerField(default=0)
    student_id      = models.IntegerField(default=0)
    recharge_date   = models.DateTimeField(auto_now_add=False, blank=True, null = True)
    generate_date   = models.DateTimeField(auto_now_add=True)
    insert_by       = models.IntegerField(default=0)
    status          = models.BooleanField(default=1)

    def __str__(self):
        return str(self.card_number)

    class Meta:
        verbose_name = "Balance Card Information"
        verbose_name_plural = "Balance Card Informations"

class StudentBalanceInfo(models.Model):
    stid               = models.ForeignKey(Student, on_delete=models.CASCADE)
    student_id         = models.IntegerField(default=0)
    current_balance    = models.FloatField(default=0)
    last_insert_date   = models.DateTimeField(auto_now_add=False, blank=True, null = True)
    status             = models.BooleanField(default=0)

    def __str__(self):
        return str(self.stid)

    class Meta:
        verbose_name = "Student Balance Information"
        verbose_name_plural = "Student Balance Informations"


class StudentCardRechargeHistory(models.Model):
    stid            = models.ForeignKey(Student, on_delete=models.CASCADE)
    card_number     = models.CharField(max_length = 20, unique = True)
    card_amount     = models.IntegerField(default=0) 
    recharge_date   = models.DateTimeField(auto_now_add=True)
    insert_by       = models.IntegerField(default=0)
    status          = models.BooleanField(default=0)

    def __str__(self):
        return str(self.stid)

    class Meta:
        verbose_name = "Student Card Recharge History"
        verbose_name_plural = "Student Card Recharge Historys"

class ScholarshipSettings(models.Model):
    fee_type        = models.ForeignKey(FeeTypes, on_delete=models.CASCADE)
    version_name    = models.ForeignKey(SchoolVersion, on_delete = models.CASCADE)
    class_name      = models.ForeignKey(ClassInfo, on_delete=models.CASCADE)
    scholarship_tp  = (
        ('1', 'Full Fee'),
        ('2', 'Half Fee'),
        ('3', 'Quarter Fee'),
        ('4', 'Scholarship'),
        ('5', 'Sub-Scholarship'),
    )
    scholarship_type = models.CharField(max_length=1, choices = scholarship_tp)
    year             = models.ForeignKey(Years, on_delete=models.CASCADE)
    percentage       = models.IntegerField(default=0)
    insert_date      = models.DateTimeField(auto_now_add=True)
    insert_by        = models.IntegerField(default=0)
    status           = models.BooleanField(default=1)

    def __str__(self):
        return str(self.fee_type)

    class Meta:
        verbose_name = "Scholarship Settings"
        verbose_name_plural = "Scholarship Settings"

#--------------------------Start Accounts Module-------------------------------------#

class ParentAccountList(models.Model):
    parent_account    = models.CharField(max_length = 50)
    insert_date       = models.DateTimeField(auto_now_add=True)
    last_update       = models.DateTimeField(auto_now=True)
    insert_by         = models.IntegerField(default=0)
    update_by         = models.IntegerField(default=0)    
    status            = models.BooleanField(default=0)

    def __str__(self):
        return self.parent_account
    class Meta:
        verbose_name = "Parent Account"
        verbose_name_plural = "Parent Account List"

class HeadAccountList(models.Model):
    head_account     = models.CharField(max_length = 50)
    parent_account   = models.ForeignKey(ParentAccountList, on_delete = models.CASCADE)
    head_details     = models.TextField(blank = True)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=0)

    def __str__(self):
        return self.head_account

    class Meta:
        verbose_name = "Head Account"
        verbose_name_plural = "Head Account List"

class BankList(models.Model):
    bank_name        = models.CharField(max_length = 100, unique = True)   
    status           = models.BooleanField(default=True)
    def __str__(self):
        return str(self.bank_name)

    class Meta:
        verbose_name = "Bank"
        verbose_name_plural = "Bank List"

class BankBranchList(models.Model):
    branch_name      = models.CharField(max_length = 100)
    bank_name        = models.ForeignKey(BankList, on_delete = models.CASCADE)
    branch_code      = models.CharField(max_length =15)
    mobile_number    = models.CharField(max_length = 15, blank = True)
    phone_number     = models.CharField(max_length = 15, blank = True)
    email_address    = models.CharField(max_length = 80, blank = True)
    branch_address   = models.CharField(max_length = 260)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)
    def __str__(self):
        return str(self.branch_name)

    class Meta:
        verbose_name = "Branch"
        verbose_name_plural = "Branch List"

        
class BankAccountList(models.Model):
    account_number   = models.BigIntegerField(default=0)
    bank_name        = models.ForeignKey(BankList, on_delete = models.CASCADE)
    branch_name      = models.ForeignKey(BankBranchList, on_delete = models.CASCADE)
    account_title    = models.CharField(max_length = 150)
    acc_type = (
        ('1', 'Current'),
        ('2', 'Saving'),
    )
    account_type     = models.CharField(max_length=1, choices=acc_type)   
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    notes            = models.TextField(blank = True)
    status           = models.BooleanField(default=0)

    def __str__(self):
        return str(self.account_number)

    class Meta:
        verbose_name = "Bank Account"
        verbose_name_plural = "Bank Account List"

class VendorManagement(models.Model):
    vendor_name      = models.CharField(max_length = 60)
    contact_name     = models.CharField(max_length = 60)
    vendor_phone     = models.CharField(max_length =15)
    emergency_call   = models.CharField(max_length = 15)
    vendor_email     = models.EmailField(max_length = 60)
    vendor_address   = models.TextField(max_length = 260)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.vendor_name)

    class Meta:
        verbose_name = "Vendor Management"
        verbose_name_plural = "Add Vendor Management"

class SubAccountType(models.Model):
    account_name    = models.CharField(max_length = 90)
    ordering        = models.IntegerField(default = 0)
    insert_date     = models.DateTimeField(auto_now_add=True)
    last_update     = models.DateTimeField(auto_now=True)
    insert_by       = models.IntegerField(default=0)
    update_by       = models.IntegerField(default=0)    
    status          = models.BooleanField(default=True)

    def __str__(self):
        return str(self.account_name)

    class Meta:
        verbose_name = "Sub Account Type"
        verbose_name_plural = "Sub Account Types"

class ChartOfAccounts(models.Model):
    head_code       = models.CharField(max_length = 30, unique = True)
    sl_number       = models.IntegerField(default=0)
    account_type    = models.CharField(max_length = 30)
    account_name    = models.CharField(max_length = 90)
    sub_account_type= models.ForeignKey(SubAccountType, on_delete = models.CASCADE, blank = True, null = True)
    account_group   = models.CharField(max_length = 60)
    insert_date     = models.DateTimeField(auto_now_add=True)
    last_update     = models.DateTimeField(auto_now=True)
    insert_by       = models.IntegerField(default=0)
    update_by       = models.IntegerField(default=0)    
    status          = models.BooleanField(default=True)

    def __str__(self):
        return str(self.account_name)

    class Meta:
        verbose_name = "Chart Of Accounts"
        verbose_name_plural = "Chart Of Accounts List"

class VoucherEntry(models.Model):
    voucher_type = (
        ('1', 'Cash Receive Voucher'),
        ('2', 'Cheque Receive Voucher'),
        ('3', 'Cash Payment Voucher'),
        ('4', 'Cheque Payment Voucher'),
        ('5', 'Journal Voucher(JV)'),
    )
    voucher_type     = models.CharField(max_length = 1, choices = voucher_type)  
    account_head     = models.ForeignKey(ChartOfAccounts, on_delete = models.CASCADE)
    amount           = models.FloatField(default=0)
    special_note     = models.CharField(max_length = 100)
    cash_bank        = models.IntegerField(default=0)
    cheque_no        = models.CharField(max_length = 30)
    voucher_no       = models.IntegerField(default=0)
    person           = models.CharField(max_length = 100)
    narration        = models.CharField(max_length = 250)
    reference        = models.CharField(max_length = 100)
    transaction_date = models.DateField(auto_now_add=False)
    year             = models.ForeignKey(Years, on_delete = models.CASCADE)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.voucher_type)

    class Meta:
        verbose_name = "Voucher Info"
        verbose_name_plural = "Voucher Infos"

class SalaryAllowance(models.Model):
    allowance_type   = models.CharField(max_length = 100)
    percentage       = models.IntegerField(default=0)
    desig_name       = models.ForeignKey(Designation, on_delete = models.CASCADE)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.allowance_type)

    class Meta:
        verbose_name = "Salary Allowance Info"
        verbose_name_plural = "Salary Allowance Infos"

class EmpConsideredAmount(models.Model):
    considered_amount= models.FloatField(default=0)
    employee_name    = models.ForeignKey(EmployeeList, on_delete = models.CASCADE)
    year             = models.ForeignKey(Years, on_delete = models.CASCADE)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.employee_name)

    class Meta:
        verbose_name = "Considered Salary Allowance Info"
        verbose_name_plural = "Considered Salary Allowance Infos"

class FundTypes(models.Model):
    fund_name        = models.CharField(max_length = 200)
    percentage       = models.IntegerField(default=0)
    fund_duration    = models.DateField(auto_now_add=False)
    terms_conditions = models.TextField(blank=True)
    attachment       = models.FileField(upload_to="fund_document", blank = True)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.fund_name)

    class Meta:
        verbose_name = "Fund Type"
        verbose_name_plural = "Fund Types"

class EmployeeFunds(models.Model):
    employee_name  = models.ForeignKey(EmployeeList, on_delete = models.CASCADE)
    fund_name      = models.ForeignKey(FundTypes, on_delete = models.CASCADE)
    year           = models.ForeignKey(Years, on_delete = models.CASCADE)
    fund_amount    = models.FloatField(default = 0)
    month_name     = models.CharField(max_length = 15)
    insert_date    = models.DateTimeField(auto_now_add=True)
    last_update    = models.DateTimeField(auto_now=True)
    insert_by      = models.IntegerField(default=0)
    update_by      = models.IntegerField(default=0)    
    status         = models.BooleanField(default=True)

    def __str__(self):
        return str(self.fund_amount)

    class Meta:
        verbose_name = "Employee Fund"
        verbose_name_plural = "Employee Funds"

class EmployeeSalary(models.Model):
    employee_name   = models.ForeignKey(EmployeeList, on_delete=models.CASCADE)
    year            = models.ForeignKey(Years, on_delete=models.CASCADE)
    month_name      = models.CharField(max_length = 15)
    present_salary  = models.FloatField(default=0)
    payable_salary  = models.FloatField(default=0)
    paid_salary     = models.FloatField(default=0)
    due_salary      = models.FloatField(default=0)
    voucher_no      = models.IntegerField(default=0)
    payment_date    = models.DateTimeField(auto_now_add=False, blank = True, null = True)
    insert_date     = models.DateTimeField(auto_now_add=True)
    insert_by       = models.IntegerField(default=0)
    update_by       = models.IntegerField(default=0)    
    status          = models.BooleanField(default=1)

    def __str__(self):
        return str(self.employee_name)

    class Meta:
        verbose_name = "Employee Salary"
        verbose_name_plural = "Employee Salary"

class FixedAsset(models.Model):
    asset_name     = models.CharField(max_length = 100)
    market_price   = models.FloatField(default = 0)
    current_market_price  = models.FloatField(default = 0)
    voucher_no     = models.IntegerField(default=0)
    narration      = models.CharField(max_length = 250, blank = True)
    insert_date    = models.DateTimeField(auto_now_add=True)
    last_update    = models.DateTimeField(auto_now=True)
    insert_by      = models.IntegerField(default=0)
    update_by      = models.IntegerField(default=0)    
    status         = models.BooleanField(default=True)

    def __str__(self):
        return str(self.asset_name)

    class Meta:
        verbose_name = "Fixed Asset"
        verbose_name_plural = "Fixed Assets"

#--------------------------End Accounts Module-------------------------------------#

#--------------------------Start Inventory Module-------------------------------------#

class ProductsCategory(models.Model):
    category_name    = models.CharField(max_length = 100)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.category_name)

    class Meta:
        verbose_name = "Product Category"
        verbose_name_plural = "Product Category"

class Products(models.Model):
    product_name     = models.CharField(max_length = 100)
    category_name    = models.ForeignKey(ProductsCategory, on_delete = models.CASCADE)
    product_details  = models.CharField(max_length = 200)
    insert_date      = models.DateTimeField(auto_now_add=True)
    last_update      = models.DateTimeField(auto_now=True)
    insert_by        = models.IntegerField(default=0)
    update_by        = models.IntegerField(default=0)    
    status           = models.BooleanField(default=True)

    def __str__(self):
        return str(self.product_name)

    class Meta:
        verbose_name = "Product Info"
        verbose_name_plural = "Product Info"


#--------------------------End Inventory Module-------------------------------------#