# Generated by Django 4.0.4 on 2022-05-01 03:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mundimoto', '0005_versions_possiblekm_alter_findmotorbike_id_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='versions',
            name='fk_range',
            field=models.IntegerField(null=True),
        ),
    ]