# Generated by Django 4.2.2 on 2023-07-15 15:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0017_coaches_alter_team_coaches_delete_coach'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coaches',
            name='image',
            field=models.ImageField(default='', upload_to='coaches/'),
        ),
    ]
