from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views import View
from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'index.html'


# LoginRequiredMixin - if we need authorization
class CourseView(TemplateView):
    template_name = 'course.html'


class ContactView(TemplateView):
    template_name = 'contact.html'


class ProfileView(LoginRequiredMixin, View):
    template_name = 'profile.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name, {'user': request.user})
