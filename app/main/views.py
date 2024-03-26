from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views import View
from django.views.generic import TemplateView

from lessons.models import Lesson


class IndexView(TemplateView):
    template_name = 'index.html'


class CourseView(TemplateView):
    template_name = 'course.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # Получаем все уроки, сортированные по главам и порядку уроков внутри глав
        lessons = Lesson.objects.all().order_by('chapter', 'chapter_order')

        # Группируем уроки по главам
        chapters = {}
        for lesson in lessons:
            if lesson.chapter in chapters:
                chapters[lesson.chapter].append(lesson)
            else:
                chapters[lesson.chapter] = [lesson]


        context['chapters'] = chapters
        return context


class ContactView(TemplateView):
    template_name = 'contact.html'


class ProfileView(LoginRequiredMixin, View):
    template_name = 'profile.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name, {'user': request.user})


class SiteErrorView(TemplateView):
    template_name = 'site_error.html'
