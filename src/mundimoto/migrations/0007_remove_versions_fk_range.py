# Generated by Django 4.0.4 on 2022-05-01 03:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mundimoto', '0006_versions_fk_range'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='versions',
            name='fk_range',
        ),
    ]
