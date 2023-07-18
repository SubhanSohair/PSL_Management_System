from django import forms
from home.models import Player, Team

class PlayerForm(forms.ModelForm):
    image = forms.ImageField(required=False)
    
    class Meta:
        model = Player
        fields = ['name', 'age', 'team', 'f_name', 'l_name', 'position', 'image']
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['team'].widget = forms.Select(choices=Team.objects.all().values_list('id', 'name'))
