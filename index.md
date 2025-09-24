---
layout: default
title: Blog!
---
<center>
    <img 
        src="{{ site.baseurl }}/assets/img/site-resources/ckbloghi.webp"
        style="border: solid 3px #ffffeb;"
    />
</center>

<ul>
    {% for posts in site.posts %}
        {% unless posts.tags contains "hidden" %}
            <li>
            <a href="{{ site.baseurl }}{{ posts.url }}">{{ posts.title }}</a> - {{ posts.tags | join: ", " }} | {{ posts.date | date: "%m/%d/%Y" }}
            </li>
        {% endunless %}
    {% endfor %}
</ul>
