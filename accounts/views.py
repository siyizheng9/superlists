from django.shortcuts import redirect
from django.core.mail import send_mail


def send_login_mail(request):
    return redirect('/')
