# Generated by Django 3.2.18 on 2024-09-28 18:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts_app', '0003_classlist_studentlist'),
    ]

    operations = [
        migrations.AddField(
            model_name='studentlist',
            name='created',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.AddField(
            model_name='studentlist',
            name='status',
            field=models.BooleanField(default=True),
        ),
    ]
