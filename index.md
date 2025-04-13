---
layout: default
title: Home
---
# Hello, welcome to my blog!

[rss](feed.xml) [twitch](https://twitch.tv/cr4zyk1tty) [bsky](https://bsky.app/profile/crazykitty357.github.io)

---
<ul>
    {% for posts in site.posts %}
        <li>
        <a href="{{ site.baseurl }}{{ posts.url }}">{{ posts.title }}</a> - {{ posts.tags | join: ", " }} | {{ posts.date | date: "%Y-%m-%d" }}
        </li>
    {% endfor %}
<ul>
