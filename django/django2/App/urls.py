"""django2 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

from App import views

app_name = 'App'
urlpatterns = [

    path('index/', views.index, name='index'),
    path('', views.index_a, name='index_a'),

    path('header/', views.pub_header, name='pub_header'),
    path('left/', views.pub_left, name='pub_left'),

    path('xw/', views.wz_xw, name='wz_xw'),
    path('xw/<int:cid>/', views.wz_xw, name='wz_xw'),
    path('xw/<int:cid>/<int:page>/', views.wz_xw, name='wz_xw'),
    path('xw/<int:cid>/<int:page>/<int:did>/', views.wz_xw, name='wz_xw'),

    path('wx_all/<int:page>/', views.xw_all, name='xwall'),

    path('tag/<int:page>/', views.tag, name='tag'),
    # path('tag_creat/<int:page>/', views.tag_creat, name='tagcreat'),
    # path('tag_change/<int:page>/', views.tag_change, name='tagchange'),
    path('tag_del/<int:page>/<int:cid>/', views.tag_del, name='tagdel'),

    path('del/<int:cid>/<int:page>/<int:did>/<int:aid>/', views.wz_del, name='wz_del'),
    path('xw_fb/', views.wz_fb, name='wz_fb'),
    path('xw_revise/<int:aid>/<int:cid>/', views.ravise, name='ravise'),

    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),

    path('code/', views.verifycode, name='code'),

    path('pictrue/<int:page>/', views.pictrue, name='pictrue'),

    path('zx/', views.zx, name='zx'),
    path('chp/', views.chp, name='change')

]
