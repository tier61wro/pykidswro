from django.shortcuts import render
from django.views import View
from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class IndexView(TemplateView):
    template_name = 'index.html'


class CourseView(LoginRequiredMixin, TemplateView):
    template_name = 'course.html'


class ContactView(TemplateView):
    template_name = 'contact.html'


class ProfileView(LoginRequiredMixin, View):
    template_name = 'profile.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name, {'user': request.user})
