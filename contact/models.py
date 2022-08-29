from importlib.metadata import requires
from django.db import models
from django.urls import reverse
# Create your models here.
class contact(models.Model):

    title = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    content = models.TextField(max_length=500)

    class Meta:
        verbose_name = "contact"
        verbose_name_plural = "contacts"

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse("contact_detail", kwargs={"pk": self.pk})
