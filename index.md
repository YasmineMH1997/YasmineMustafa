---
layout: page
title: "Yasmine Mustafa"
permalink: /
header:
  image_fullwidth: "logom.png"
  title: "Yasmine Mustafa"
  subheadline: "PhD Candidate, Missouri University of Science and Technology — Machine Learning for Healthcare"
---

<!-- ===== Inline subheadline row (shows even if layout doesn't render subheadline) ===== -->
<div style="display:flex;align-items:center;gap:12px;margin:10px 0 20px 0;">
  <img src="{{ site.urlimg }}logos/mst_logo.png" alt="Missouri S&T" style="height:36px;">
  <div><strong>PhD Candidate, Missouri University of Science and Technology</strong> — Machine Learning for Healthcare</div>
</div>

<!-- ===== Quick Highlights (3-up) ===== -->
<div class="row t20">
  <div class="medium-4 columns">
    <h3>Multimodal Medical AI</h3>
    <p>Vision Transformers + MRI/PET + clinical text. Focused on anatomically informed attention and trustworthiness.</p>
  </div>
  <div class="medium-4 columns">
    <h3>Explainability</h3>
    <p>Jacobian-based maps, Grad-CAM, and head pruning for interpretable, reliable decision making.</p>
  </div>
  <div class="medium-4 columns">
    <h3>Open to Speaking</h3>
    <p>Invited talks, panels, and guest lectures on multimodal neuroimaging and trustworthy AI.</p>
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
  <p>Open to research collaborations, industry internships, and speaking invitations.</p>
  <p>
    <a class="button tiny radius" href="{{ '/resume/' | relative_url }}">View Resume</a>
    <a class="button tiny secondary radius" href="{{ '/contact/' | relative_url }}">Contact Me</a>
  </p>
</div>
