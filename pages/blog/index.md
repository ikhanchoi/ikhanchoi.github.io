---
layout: default
---


# 블로그

## 연구소개글


## 진로정보글


## 공부잡담글


{% assign posts = site.posts | where: "category", "japdam" | where: "listed", true | sort: "date" %}

<ul>
{% for post in posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
    ({{ post.date | date: "%y/%-m/%-d" }})
  </li>
{% endfor %}
</ul>