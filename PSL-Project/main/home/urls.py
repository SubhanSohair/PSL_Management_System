from django.contrib import admin
from django.urls import path,include
from home import views
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',views.user_login,name='login'),
    path('signup/',views.sign_up,name='signup'),
    path('logout/',views.user_logout,name='logout'),
    path('about/',views.about,name='about'),
    path('schedule/',views.schedule,name='schedule'),
    path('statistics/',views.stats,name='stats'),
    path('pointtable/',views.point_table,name='pointable'),
    path('pointable/<int:season_id>',views.season_point_table,name='s_pointtable'),
    path('season/',views.season,name='season'),
    path('home/',views.index,name='home'),
    path('teams/',views.select_team,name='team'),
    path('teams/<int:team_id>',views.team_players,name='team_players'),

]


if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)