---
layout: default
---

# Schedule



<h3 id="upcoming-heading" hidden>Upcoming</h3>
Soonest first.
<ul class="travel-list" id="travel-upcoming" hidden></ul>

<h3 id="past-heading" hidden>Past</h3>
Most recent first, within the past year.
<ul class="travel-list" id="travel-past" hidden></ul>

{% assign travels = site.data.schedule.travel | sort: "start" | reverse %}

<ul class="travel-list" id="travel-source">
{% for entry in travels %}
  {% include travel-entry.html entry=entry %}
{% endfor %}
</ul>

<p id="travel-empty" hidden>
  No travel scheduled within this period.
</p>

For the complete travel history, see [All travel records]({% link pages/schedule/travel.md %}).

<script src="{{ '/assets/js/travel-window.js' | relative_url }}" defer></script>
