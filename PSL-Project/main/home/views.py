from django.shortcuts import render,redirect,HttpResponse,get_object_or_404
from .forms import Signupform
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login,logout,authenticate
from django.contrib.auth.models import User
from django.contrib import messages 
from .models import Season,Team,Match,Stats,PointTable,Coaches



#-------------------------------------------------------LOGIN PART 
def user_login(request):
    if not request.user.is_authenticated:
        if request.method=='POST':
            fm=AuthenticationForm(request=request,data=request.POST)
            if fm.is_valid():
                un=fm.cleaned_data['username']
                pn=fm.cleaned_data['password']
                user=authenticate(request,username=un,password=pn)
                if user is not None:
                    if user.is_superuser:
                        login(request, user)
                        return redirect('administration')
                    else:
                        login(request, user)
                        return redirect('home')
        else:
            fm=AuthenticationForm()
        context={'form':fm}
        return render(request,'home/login.html',context)
    else:
        return redirect('home')

#-------------------------------------------------SIGNUP PART 
def sign_up(request):
    if not request.user.is_authenticated:
        if request.method == 'POST':
            form = Signupform(request.POST)
            if form.is_valid():
                form.save()
                messages.success(request, 'Account created successfully.')
                messages.success(request, 'You can now login to your account.')
                return redirect('login')
        else:
            form = Signupform()
        context = {'form': form}
        return render(request, 'home/signup.html', context)
    else:
        return redirect('signup')

#logout

def user_logout(request):
    logout(request)
    return redirect('login')




def index(request):
    if request.user.is_authenticated:
        context={'name':request.user}
        return render(request,'home/home.html',context)
    else:
        return redirect('login')
    

    
def about(request):
    if request.user.is_authenticated:
        return render(request,'home/About.html',{'name':request.user})
    else:
        return redirect('login')
    

# ------------------------------------ POINT TABEL VIEW -------------------------------------
def point_table(request):
    if request.user.is_authenticated:
        seasons = Season.objects.all()
        context = {'seasons': seasons,'name':request.user}
        return render(request, 'home/Point_Table.html', context)
    else:
        return redirect('login')

def season_point_table(request, season_id):
    if request.user.is_authenticated:
        season = Season.objects.get(pk=season_id)
        point_table = PointTable.objects.filter(season=season)
        context = {'season': season, 'point_table': point_table,'name':request.user}
        return render(request, 'home/season_point_table.html', context)
    else:
        return redirect('login')

#-----------------------------------------Schedule View

def schedule(request):  
     if request.user.is_authenticated:
        a=Match.objects.all()
        context={'match':a,'name':request.user}
        return render(request,'home/schedule.html',context)
     else:
         return redirect('login')


#---------------------------------------STATS VIEW
def stats(request):
    if request.user.is_authenticated:
        most_runs_stats = Stats.objects.order_by('-runs')[:5]  
        most_wickets_stats = Stats.objects.order_by('-wickets')[:5]  
        most_sixes_stats = Stats.objects.order_by('-no_of_sixes')[:5]  
        most_fours_stats = Stats.objects.order_by('-no_of_fours')[:5]  
        
        context = {
            'most_runs_stats': most_runs_stats,
            'most_wickets_stats': most_wickets_stats,
            'most_sixes_stats': most_sixes_stats,
            'most_fours_stats': most_fours_stats,
            'name': request.user,
        }
        return render(request, 'home/Statistics.html', context)
    else:
        return redirect('login')
    
#--------------------------------------------------Season VIEW
def season(request):
    if request.user.is_authenticated:
        a = Season.objects.all()
        context = {'season':a,'name':request.user}
        return render(request,'home/season.html',context)
    else:
        return redirect('login')

#----------------------------------------------------TEAM VIEW

def select_team(request):
    if request.user.is_authenticated:  
        a=Team.objects.all()
        context={'teams':a,'name':request.user}
        return render(request,'home/display_team.html',context)
    else:
        return redirect('login')


def team_players(request, team_id):
    if request.user.is_authenticated:
        team = Team.objects.get(id=team_id)
        players = team.player_set.all()
        coaches=Coaches.objects.filter(team=team)
        context = {
            'team': team,
            'players': players,
            'name':request.user,
            'coaches':coaches
        }
        return render(request, 'home/team_players.html', context)
    else:
        return redirect('login')



