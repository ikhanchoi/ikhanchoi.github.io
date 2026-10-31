---
layout: default
---

# Talks

<div class="talk-list">
{% for talk in site.data.archive.talks %}
  {% include talk-entry.html talk=talk %}
{% endfor %}
</div>