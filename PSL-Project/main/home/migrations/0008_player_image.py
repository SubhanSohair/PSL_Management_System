# Generated by Django 4.2.2 on 2023-07-15 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_remove_player_dob'),
    ]

    operations = [
        migrations.AddField(
            model_name='player',
            name='image',
            field=models.ImageField(default='', upload_to='players/'),
        ),
    ]