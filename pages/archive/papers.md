---
layout: default
---

# Papers

{% assign preprints = site.data.archive.papers
   | where: "status", "preprint" %}
{% assign accepted = site.data.archive.papers
   | where: "status", "accepted" %}
{% assign published = site.data.archive.papers
   | where: "status", "published" %}

## Preprints

<ul class="paper-preprints">
{% for paper in preprints %}
  {% include paper-entry.html
     paper=paper
     number=forloop.rindex %}
{% endfor %}
</ul>

## Accepted papers

<ul class="paper-accepted">
{% for paper in accepted %}
  {% include paper-entry.html
     paper=paper
     number=forloop.rindex %}
{% endfor %}
</ul>

## Published papers

<ul class="paper-published">
{% for paper in published %}
  {% include paper-entry.html
     paper=paper
     number=forloop.rindex %}
{% endfor %}
</ul>