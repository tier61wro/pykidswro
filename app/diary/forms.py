from datetime import datetime

from django import forms
from django.conf import settings
from django.forms.widgets import DateInput

from .models import DiaryEntry


class DiaryEntryForm(forms.ModelForm):
    # date = forms.DateField(
    #     widget=forms.DateInput(format='%d/%m/%Y'),
    #     input_formats=['%d/%m/%Y'],
    #     # widget=forms.DateInput(attrs={'type': 'date', 'format': '%d/%m/%Y'})
    # )

    date = forms.DateField(
        widget=forms.DateInput(format='%d/%m/%Y', attrs={'class': 'form-control'}),
        input_formats=['%d/%m/%Y'],
    )
    steps = forms.IntegerField(
        widget=forms.NumberInput(attrs={'class': 'form-control'}),
    )
    study_hours = forms.DecimalField(
        widget=forms.NumberInput(attrs={'class': 'form-control'}),
    )

    class Meta:
        model = DiaryEntry
        fields = ['date', 'steps', 'study_hours']

    def clean_steps(self):
        steps = self.cleaned_data['steps']
        if not isinstance(steps, int):
            raise forms.ValidationError('Количество шагов должно быть числом.')
        return steps

    def clean_study_hours(self):
        study_hours = self.cleaned_data['study_hours']
        if study_hours < 0:
            raise forms.ValidationError('Время не может быть отрицательным')
        return study_hours
