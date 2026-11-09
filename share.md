---
layout: default
title: Share
description: >-
  Standalone pages shared by Giovanni Maria De Filippis: charts, comparisons
  and notes that open directly in the browser.
---

## Share

Standalone pages: charts, comparisons and working notes. Each one opens directly
in the browser, no login needed.

{% assign items = "" | split: "" %}
{% if site.data.share %}{% assign items = site.data.share | where_exp: "x", "x.listed != false" | sort: "date" | reverse %}{% endif %}
{% if items.size > 0 %}
<ul class="share-list">
{% for x in items %}
  <li>
    <a href="{{ '/share/' | append: x.file | relative_url }}">{{ x.title }}</a>
    {% if x.tags %}{% for t in x.tags %} <span class="tag">{{ t }}</span>{% endfor %}{% endif %}
    {% if x.description %}<span class="share-desc">{{ x.description }}</span>{% endif %}
    {% if x.date %}<span class="pub-meta">{{ x.date | date: "%-d %B %Y" }}</span>{% endif %}
  </li>
{% endfor %}
</ul>
{% else %}
<p class="pub-meta">Nothing public here yet.</p>
{% endif %}
