---
layout: page
title: "Yasmine Mustafa"
permalink: /
header:
  image_fullwidth: "logom.png"
  title: "Yasmine Mustafa"
  subheadline: "Assistant Professor • Data Science • Artificial Intelligence"
---

<!-- ===== Academic Affiliation ===== -->
<div style="display:flex;align-items:center;gap:16px;margin:15px 0 25px 0;">

  <img src="{{ site.urlimg }}logos/AUC-Logo.png"
       alt="American University in Cairo Logo"
       style="height:65px;width:auto;object-fit:contain;">

  <div>
    <strong>Assistant Professor of Data Science</strong>
    <br>
    Department of Mathematics and Actuarial Science
    <br>
    <strong>American University in Cairo (AUC)</strong>
    <br>
    <span style="color:#666;font-size:0.9em;">
      PhD in Computer Science, Missouri University of Science and Technology
    </span>
  </div>

</div>

<!-- ===== Introduction ===== -->
<p>
I am a computer scientist and AI researcher specializing in
<strong>machine learning, multimodal artificial intelligence,
medical imaging, and trustworthy AI</strong>.
My research focuses on developing interpretable, anatomically informed,
and robust learning frameworks for complex multimodal data,
with particular applications in neuroimaging and healthcare.
</p>

<p>
I am particularly interested in bridging advances in
<strong>deep learning, computer vision, foundation models,
and multimodal representation learning</strong>
with real-world challenges involving heterogeneous data,
missing modalities, and model interpretability.
</p>

<!-- ===== Research and Teaching Highlights ===== -->
<div class="row t20">

  <div class="medium-4 columns">
    <h3>Multimodal AI & Medical Imaging</h3>
    <p>
      Developing multimodal learning frameworks that integrate
      MRI, PET, clinical narratives, and structured data.
      My research explores vision transformers, anatomical
      priors, representation learning, and foundation models
      for healthcare applications.
    </p>
  </div>

  <div class="medium-4 columns">
    <h3>Explainable & Trustworthy AI</h3>
    <p>
      Investigating interpretable and reliable AI systems
      through anatomical attention mechanisms, explainable
      deep learning, attention analysis, and efficient
      model architectures, with an emphasis on clinically
      meaningful and robust predictions.
    </p>
  </div>

  <div class="medium-4 columns">
    <h3>Teaching & Student Research</h3>
    <p>
      Teaching data science and computational methods
      through hands-on learning, programming, simulation,
      and real-world applications. I am passionate about
      mentoring students, interdisciplinary research,
      and connecting theoretical knowledge with practical
      problem-solving.
    </p>
  </div>

</div>

<hr>

<!-- ===== Featured Publications ===== -->
<!--
<h2>Featured Publications</h2>
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

<p><a class="button tiny radius" href="{{ '/publications/' | relative_url }}">See all publications</a></p>
-->

<hr>


<!-- ===== Collaboration ===== -->
<div class="callout panel">

  <h3>Research & Collaboration</h3>

  <p>
    I welcome research collaborations, interdisciplinary
    projects, student research opportunities, and speaking
    invitations involving artificial intelligence,
    multimodal machine learning, healthcare AI,
    explainable AI, and applied data science.
  </p>

  <p>
    <a class="button tiny radius"
       href="{{ '/resume/' | relative_url }}">
      View CV
    </a>

    <a class="button tiny secondary radius"
       href="{{ '/contact/' | relative_url }}">
      Contact Me
    </a>
  </p>

</div>