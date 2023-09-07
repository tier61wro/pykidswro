from dateutil import parser
from datetime import date

from django.shortcuts import render
from .forms import DiaryEntryForm

from django.views.generic import TemplateView
from datetime import date, timedelta

from django.shortcuts import render, redirect
from .forms import DiaryEntryForm
from django.views.generic.edit import FormView


class DiaryEntryView(FormView):
    template_name = 'diary_entry.html'
    form_class = DiaryEntryForm
    success_url = '/diary/entry/success/'


from datetime import date

class DiaryEntryView(FormView):
    template_name = 'diary_entry.html'
    form_class = DiaryEntryForm
    success_url = '/diary/entry/success/'

    def get_initial(self):
        initial = super().get_initial()
        date_param = self.request.GET.get('date')
        if not date_param:
            initial['date'] = date.today().strftime('%Y-%m-%d')
        else:
            try:
                parsed_date = parser.parse(date_param)
                initial['date'] = parsed_date.strftime('%Y-%m-%d')
            except ValueError:
                initial['date'] = date.today().strftime('%Y-%m-%d')
        return initial

    def form_valid(self, form):
        form.save()
        return redirect(self.get_success_url())

    def get(self, request, *args, **kwargs):
        form = DiaryEntryForm(initial=self.get_initial())
        return render(request, 'diary_entry.html', {'form': form})

    def post(self, request, *args, **kwargs):
        form = DiaryEntryForm(request.POST)
        if form.is_valid():
            form.save()
            # Обработка успешной отправки формы
            return redirect('success-url')
        return render(request, 'diary_entry.html', {'form': form})


def diary_entry_success(request):
    return render(request, 'diary_entry_success.html')


class DateListView(TemplateView):
    template_name = 'date_list.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        start_date = date(2023, 6, 1)
        end_date = date.today()
        date_range = [start_date + timedelta(days=x) for x in range((end_date - start_date).days + 1)]
        context['date_range'] = date_range
        return context
