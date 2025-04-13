---
layout: default
title: Home
---
# Hello

<ul>
    {% for posts in site.posts %}
        <li>
        <a href="{{ posts.url }}">{{ posts.title }}</a> - {{ posts.date | date: "%Y-%m-%d" }}
        </li>
    {% endfor %}
<ul>
