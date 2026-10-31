---
layout: default
---

# Travel

{% assign travels = site.data.schedule.travel | sort: "start" | reverse %}
{% assign previous_year = "" %}

<ul class="travel-list">
{% for entry in travels %}
  {% assign current_year = entry.start | date: "%Y" %}
  {% assign year_label = "" %}

  {% if current_year != previous_year %}
    {% assign year_label = current_year %}
  {% endif %}

  {% include travel-entry.html entry=entry year_label=year_label %}

  {% assign previous_year = current_year %}
{% endfor %}
</ul>
