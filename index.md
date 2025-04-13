---
layout: default
title: Home
---
# Hello, welcome to my blog!

[rss](feed.xml)

<ul>
    {% for posts in site.posts %}
        <li>
        <a href="{{ site.baseurl }}{{ posts.url }}">{{ posts.title }}</a> - {{ posts.tags | join: ", " }} | {{ posts.date | date: "%Y-%m-%d" }}
        </li>
    {% endfor %}
<ul>
