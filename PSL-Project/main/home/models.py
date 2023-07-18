from django.db import models

# Create your models here
class Season(models.Model):
    number=models.IntegerField()
    start_date=models.DateField()
    end_date=models.DateField()
    year=models.IntegerField()


    def __str__(self):
        return f" season {self.number}"
    
class Coaches(models.Model):
    name = models.CharField(max_length=100)
    image = models.ImageField(upload_to='coaches/', default='')

    def __str__(self):
        return self.name


class Team(models.Model):
    name = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    image = models.ImageField(upload_to='teams/',default='')
    

    def __str__(self):
        return self.name
    
class Coaches(models.Model):
    name = models.CharField(max_length=100)
    image = models.ImageField(upload_to='coaches/', default='')
    team=models.OneToOneField(Team,on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Player(models.Model):
    name = models.CharField(max_length=100)
    f_name=models.CharField(max_length=100)
    l_name=models.CharField(max_length=100)
    age=models.IntegerField()
    position=models.CharField(max_length=200)
    team = models.ForeignKey(Team, on_delete=models.CASCADE)
    image=models.ImageField(upload_to='players/',default='')

    def __str__(self):
        return self.name
    
class Stadium(models.Model):
    name = models.CharField(max_length=100)
    location = models.CharField(max_length=100)
    capacity = models.IntegerField()

    def __str__(self):
        return self.name

    
class Match(models.Model):
    team_1=models.ForeignKey(Team,on_delete=models.CASCADE,related_name='home_matches')
    team_2=models.ForeignKey(Team,on_delete=models.CASCADE,related_name='away_matches')
    stadium=models.ForeignKey(Stadium,on_delete=models.CASCADE)
    match_date=models.DateField()

    def __str__(self):
        return f"{self.match_date}"
    
class Stats(models.Model):
    runs=models.IntegerField()
    wickets=models.IntegerField()
    no_of_fours=models.IntegerField()
    no_of_sixes=models.IntegerField()
    no_of_overs=models.IntegerField()
    player=models.ForeignKey(Player,on_delete=models.CASCADE)
    match=models.ForeignKey(Match,on_delete=models.CASCADE)


class PointTable(models.Model):
    team = models.ForeignKey(Team, on_delete=models.CASCADE)
    season = models.ForeignKey(Season, on_delete=models.CASCADE)
    Matches_Played=models.IntegerField()
    matches_won=models.IntegerField()
    lost_matches=models.IntegerField()


    def __str__(self):
        return f"{self.team} - {self.season}:"
