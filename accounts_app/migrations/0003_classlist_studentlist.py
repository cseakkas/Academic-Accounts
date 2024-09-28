# Generated by Django 3.2.18 on 2024-09-28 17:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts_app', '0002_alter_userregistration_photo'),
    ]

    operations = [
        migrations.CreateModel(
            name='ClassList',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text_id', models.CharField(max_length=32, unique=True)),
                ('class_name', models.CharField(max_length=50)),
                ('short_name', models.CharField(max_length=10)),
                ('rank', models.IntegerField(default=0)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Class List',
                'verbose_name_plural': 'ClassList',
                'db_table': 'class_list',
            },
        ),
        migrations.CreateModel(
            name='StudentList',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('roll', models.CharField(max_length=50, unique=True)),
                ('reg_no', models.CharField(max_length=50, unique=True)),
                ('date_of_birth', models.DateField()),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('phone_number', models.CharField(blank=True, max_length=15, null=True)),
                ('address', models.TextField(blank=True, null=True)),
                ('father_name', models.CharField(max_length=100)),
                ('mother_name', models.CharField(max_length=100)),
                ('guardian_name', models.CharField(max_length=100)),
                ('class_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accounts_app.classlist')),
            ],
            options={
                'db_table': 'student_list',
            },
        ),
    ]