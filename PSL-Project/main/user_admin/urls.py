from django.contrib import admin
from django.urls import path,include
from . import views


urlpatterns = [
    path('',views.index,name='administration'),
    path('del/',views.delete,name='delete'),
    path('delete/<int:player_id>/', views.delete_player, name='delete_player'),
    path('add/',views.add_player,name='add'),
    path('update/',views.update,name='update'),
    path('update/<int:player_id>',views.update_player,name='update_player'),
    path('view/',views.player_view,name='view'),
    path('logout/', views.logout_view, name='log'),
]