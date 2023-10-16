from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class IndexView(TemplateView):
    template_name = 'index.html'


class AboutView(TemplateView):
    template_name = 'about.html'


class CourseView(LoginRequiredMixin, TemplateView):
    template_name = 'course.html'


class ContactView(TemplateView):
    template_name = 'contact.html'