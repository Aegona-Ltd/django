from django.shortcuts import render
from django.contrib import messages

from contact.forms import ContactForm
from contact.models import contact

# Create your views here.
def index(request):
    if request.method == 'GET':
        return render(request, 'contact/index.html')
    else:
        form = ContactForm(request.POST)
        if form.is_valid():
            data = contact()
            data.title = form.cleaned_data['title']
            data.email = form.cleaned_data['email']
            data.content = form.cleaned_data['content']
            data.save()
            messages.success(request, "Thank you for contact us!")
        data = contact.objects.all().order_by('id')
        return render(request, 'contact/list.html',{'data':data})
    
def list(request):
    data = contact.objects.all().order_by('id')
    return render(request, 'contact/list.html',{'data':data})
            