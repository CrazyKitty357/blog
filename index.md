---
layout: default
title: Home
---
<ul>
    {% for posts in site.posts %}
        <li>
        <a href="{{ posts.url }}">{{ posts.title }}</a> - {{ post.date | date: "%Y-%m-%d" }}
        </li>
    {% endfor %}
<ul>
