from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def me(request):
    return render(request, 'me.html')

def contact(request):
    return render(request, 'contact.html')

def projects(request):
    return render(request, 'projects.html')