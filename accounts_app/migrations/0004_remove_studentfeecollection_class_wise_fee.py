# Generated by Django 3.2.18 on 2024-11-01 09:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts_app', '0003_studentfeecollection_student_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='studentfeecollection',
            name='class_wise_fee',
        ),
    ]
