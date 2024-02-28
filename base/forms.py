from typing import Any
from django import forms
from django.contrib.auth.forms import AuthenticationForm

#Personalizar Login Form

class CustomAuthenticationForm(AuthenticationForm):
    def __ini__(self, request: Any = ..., *args: Any, **kwargs: Any):
        super().__init__(request = None, *args, **kwargs)
        self.fields['username'].label = 'Usuario'
        self.fields['password'].label= 'Contraseña'


class PositionForm(forms.Form):
    position = forms.CharField()