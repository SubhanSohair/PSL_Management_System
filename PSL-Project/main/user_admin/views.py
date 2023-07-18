
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import logout
from .forms import PlayerForm
from django.db.models import Q
from home.models import Player, Team


# Admin views

def index(request):
    return render(request, 'admin_part/admin.html')

#--------------------------------- ADD VIEW
def add_player(request):
    if request.method == 'POST':
        form = PlayerForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('administration')
    else:
        form = PlayerForm()
    return render(request, 'admin_part/add_player.html', {'form': form})

#----------------------------DELETE VIEW 
def delete(request):
    query = request.GET.get('q')
    team_id = request.GET.get('team_id')
    players = Player.objects.all()

    if query:
        players = players.filter(Q(name__icontains=query) | Q(position__icontains=query))
    if team_id:
        players = players.filter(team_id=team_id)

    teams = Team.objects.all()

    return render(request, 'admin_part/player_list_delete.html', {'players': players, 'query': query, 'teams': teams, 'selected_team': team_id})

def delete_player(request, player_id):
    player = get_object_or_404(Player, id=player_id)
    if request.method == 'POST':
        player.delete()
        return redirect('administration')
    return render(request, 'admin_part/player_list_delete.html', {'player': player})

#-----------------------------Update View

def update(request):
    query = request.GET.get('q')
    team_id = request.GET.get('team_id')
    players = Player.objects.all()

    if query:
        players = players.filter(Q(name__icontains=query) | Q(position__icontains=query))
    if team_id:
        players = players.filter(team_id=team_id)

    teams = Team.objects.all()

    return render(request, 'admin_part/player_list_update.html', {'players': players, 'query': query, 'teams': teams, 'selected_team': team_id})

def update_player(request, player_id):
    player = get_object_or_404(Player, id=player_id)
    if request.method == 'POST':
        form = PlayerForm(request.POST, instance=player)
        if form.is_valid():
            form.save()
            return redirect('administration')
    else:
        form = PlayerForm(instance=player)
    return render(request, 'admin_part/update.html', {'form': form, 'player': player})

#---------------------Player View
def player_view(request):
    player=Player.objects.all()
    return render(request,'admin_part/view.html',{'players':player})




#------------------LOGOUT VIEW 
def logout_view(request):
    logout(request)
    return redirect('login')

