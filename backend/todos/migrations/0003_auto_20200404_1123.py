# Generated by Django 2.1 on 2020-04-04 11:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('todos', '0002_auto_20200403_2328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='todo',
            name='check',
            field=models.BooleanField(blank=True, default=False),
        ),
    ]
