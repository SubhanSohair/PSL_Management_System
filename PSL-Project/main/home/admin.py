from django.contrib import admin
from .models import Season,Team,Player,Stadium,Match,Stats,PointTable,Coaches

# Register your models here.

@admin.register(PointTable)
class adminpointtable(admin.ModelAdmin):
    list_display=['team','season','Matches_Played','matches_won','lost_matches']

@admin.register(Coaches)
class adminCoach(admin.ModelAdmin):
    list_display=['name']




@admin.register(Season)
class adminSeason(admin.ModelAdmin):
    list_display=['number','start_date','end_date','year']

@admin.register(Team)
class adminTeam(admin.ModelAdmin):
    list_display=['name','city']

@admin.register(Player)
class adminTeam(admin.ModelAdmin):
    list_display=['name','position','f_name','l_name','age','team']

@admin.register(Match)
class adminMatch(admin.ModelAdmin):
    list_display=['stadium','team_1','team_2','match_date']

@admin.register(Stadium)
class adminStadium(admin.ModelAdmin):
    list_display=['name','location','capacity']

@admin.register(Stats)
class adminStats(admin.ModelAdmin):
    list_display=['runs','wickets','no_of_fours','no_of_sixes','match','player']





