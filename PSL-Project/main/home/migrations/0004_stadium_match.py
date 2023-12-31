# Generated by Django 4.2.2 on 2023-06-30 17:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_remove_team_seasons_player'),
    ]

    operations = [
        migrations.CreateModel(
            name='Stadium',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('location', models.CharField(max_length=100)),
                ('capacity', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Match',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('match_date', models.DateField()),
                ('stadium', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.stadium')),
                ('team_1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='home_matches', to='home.team')),
                ('team_2', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='away_matches', to='home.team')),
            ],
        ),
    ]
