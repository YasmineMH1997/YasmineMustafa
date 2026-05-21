---
layout: page
title: "Yasmine Mustafa"
permalink: /
header:
  image_fullwidth: "logom.png"
  title: "Yasmine Mustafa"
  subheadline: "Artificial Intelligence • Multimodal Learning • Trustworthy AI"
---

<!-- ===== Inline subheadline row (shows even if layout doesn't render subheadline) ===== -->
<div style="display:flex;align-items:center;gap:12px;margin:10px 0 20px 0;">
  <img src="{{ site.urlimg }}logos/mst_logo.png" alt="Missouri S&T" style="height:36px;">
  <div><strong>PhD, Missouri University of Science and Technology</strong> — Artificial Intelligence, Multimodal Learning, and Trustworthy AI</div>
</div>

<!-- ===== Quick Highlights (3-up) ===== -->
<div class="row t20">
  <div class="medium-4 columns">
    <h3>Multimodal AI</h3>
    <p>Research in transformers, multimodal learning, and representation learning across imaging, language, and structured data.</p>
  </div>

  <div class="medium-4 columns">
    <h3>Trustworthy AI</h3>
    <p>Interpretable and robust machine learning methods including explainability, attention analysis, and reliable AI systems.</p>
  </div>

  <div class="medium-4 columns">
    <h3>Teaching & Outreach</h3>
    <p>Interested in teaching, mentoring, interdisciplinary collaboration, invited talks, and applied AI education.</p>
  </div>
</div>

<hr>

<!-- ===== Featured Publications (like blog cards) ===== -->
<!--<h2>Featured Publications</h2>
<ul class="blog-index">
  {% assign pubs = site.publications | sort: 'year' | reverse | slice: 0, 3 %}
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
      {{ p.authors | join: ', ' }}
      {% if p.venue %} — <em>{{ p.venue }}</em>{% endif %}
      {% if p.year %}, {{ p.year }}{% endif %}
    </p>

    <p class="teaser">
      {{ p.teaser | default: p.abstract | strip_html | truncatewords: 45 }}
      <a href="{{ p.url | relative_url }}">Read More ›</a>
    </p>

    <p class="teaser__buttons">
      {% if p.pdf %}<a class="button tiny radius" href="{{ p.pdf | relative_url }}">Paper (PDF)</a>{% endif %}
      {% if p.link %}<a class="button tiny secondary radius" href="{{ p.link }}">Abstract</a>{% endif %}
      {% if p.slides %}<a class="button tiny secondary radius" href="{{ p.slides | relative_url }}">Slides</a>{% endif %}
      {% if p.poster %}<a class="button tiny secondary radius" href="{{ p.poster | relative_url }}">Poster</a>{% endif %}
      {% if p.video %}<a class="button tiny secondary radius" href="{{ p.video }}">Video</a>{% endif %}
      {% if p.code %}<a class="button tiny secondary radius" href="{{ p.code }}">Code</a>{% endif %}
      {% if p.award and p.award_pdf %}
        <a class="button tiny radius" style="background-color:#cc0000;color:white;border:none" href="{{ p.award_pdf | relative_url }}">{{ p.award }}</a>
      {% endif %}
    </p>

    <div style="clear:both"></div>
  </li>
  {% endfor %}
</ul>

<p><a class="button tiny radius" href="{{ '/publications/' | relative_url }}">See all publications</a></p> -->

<hr>

<!-- ===== Recent Writing ===== -->
<h2>Recent Writing</h2>
<ul>
  {% for post in site.posts limit:3 %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span class="subheader"> — {{ post.date | date: "%b %d, %Y" }}</span>
    </li>
  {% endfor %}
</ul>
<p><a class="button tiny secondary radius" href="{{ '/blog/' | relative_url }}">Visit the blog</a></p>

<hr>

<!-- ===== Invite / CTA ===== -->
<div class="callout panel">
  <h3>Let’s collaborate</h3>
  <p>Open to faculty positions, research collaborations, speaking invitations, and interdisciplinary projects involving artificial intelligence, healthcare AI, and multimodal learning.</p>
  <p>
    <a class="button tiny radius" href="{{ '/resume/' | relative_url }}">View CV</a>
    <a class="button tiny secondary radius" href="{{ '/contact/' | relative_url }}">Contact Me</a>
  </p>
</div>
