---
layout: page
title: "Publications"
permalink: /publications/
header: false
---

<ul class="blog-index">
{% assign pubs = site.publications | sort: 'year' | reverse %}
{% for p in pubs %}
  <li>
    {% if p.image and p.image.thumb %}
      <a href="{{ p.url | relative_url }}">
        <img class="teaser" src="{{ site.urlimg }}{{ p.image.thumb }}" alt="{{ p.title }}">
      </a>
    {% endif %}

    <h2 class="post-title">
      <a href="{{ p.url | relative_url }}">{{ p.title }}</a>
    </h2>

    <p class="post-meta">
      {{ p.authors | join: ', ' }} — <em>{{ p.venue }}</em>{% if p.year %}, {{ p.year }}{% endif %}
    </p>

    <p class="teaser">
      {{ p.teaser | default: p.abstract | strip_html | truncatewords: 55 }}
      <a href="#" class="pub-expand" data-target="abs-{{ forloop.index0 }}">Read More ›</a>
    </p>
    <p id="abs-{{ forloop.index0 }}" style="display:none">{{ p.abstract }}</p>

    <p class="teaser__buttons">
    {% if p.award and p.award_pdf %}
        <a class="button tiny radius" 
        href="{{ p.award_pdf | relative_url }}" 
        style="background-color:#cc0000; color:white; border:none;">
        {{ p.award }}
        </a>
    {% endif %}

    {% if p.pdf %}<a class="button tiny radius" href="{{ p.pdf | relative_url }}">Paper (PDF)</a>{% endif %}
    {% if p.link %}<a class="button tiny secondary radius" href="{{ p.link }}">Online</a>{% endif %}
    {% if p.slides %}<a class="button tiny secondary radius" href="{{ p.slides | relative_url }}">Slides</a>{% endif %}
    {% if p.poster %}<a class="button tiny secondary radius" href="{{ p.poster | relative_url }}">Poster</a>{% endif %}
    {% if p.video %}<a class="button tiny secondary radius" href="{{ p.video }}">Video</a>{% endif %}
    {% if p.code %}<a class="button tiny secondary radius" href="{{ p.code }}">Code</a>{% endif %}
    {% if p.demo %}<a class="button tiny secondary radius" href="{{ p.demo }}">Demo</a>{% endif %}
    {% if p.dataset %}<a class="button tiny secondary radius" href="{{ p.dataset }}">Dataset</a>{% endif %}
    </p>




    <div style="clear:both"></div>
  </li>
{% endfor %}
</ul>

<script>
document.addEventListener('click', function(e){
  const a = e.target.closest('.pub-expand'); if(!a) return;
  e.preventDefault();
  const el = document.getElementById(a.dataset.target);
  const open = el.style.display !== 'none';
  el.style.display = open ? 'none' : 'block';
  a.textContent = open ? 'Read More ›' : 'Read less';
});
</script>
