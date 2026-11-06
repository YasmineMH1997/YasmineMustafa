---
layout: page
title: "Publications"
permalink: /publications/
header: false
---

<link rel="stylesheet" href="{{ '/assets/css/publications-custom.css' | relative_url }}">

<ul class="blog-index publications-list">
{% assign pubs = site.publications | sort: 'year' | reverse %}
{% for p in pubs %}
  <li class="publication-card">
    {% if p.image and p.image.thumb %}
      <a class="publication-image" href="{{ p.url | relative_url }}">
        <img src="{{ site.urlimg }}{{ p.image.thumb }}" alt="{{ p.title | escape }}" loading="lazy">
      </a>
    {% endif %}

    <div class="publication-details">
      <h2 class="publication-title"><a href="{{ p.url | relative_url }}">{{ p.title }}</a></h2>
      <p class="publication-meta">
        {{ p.authors | join: ', ' }}{% if p.venue %} <span class="publication-venue">— {{ p.venue }}</span>{% endif %}{% if p.year %}, {{ p.year }}{% endif %}
      </p>
      <div class="publication-actions">
        {% if p.abstract %}<button type="button" class="publication-link pub-expand" data-target="abs-{{ forloop.index0 }}" data-title="{{ p.title | escape }}">Abstract</button>{% endif %}
        {% if p.award and p.award_pdf %}<a class="publication-link publication-award" href="{{ p.award_pdf | relative_url }}">{{ p.award }}</a>{% endif %}
        {% if p.pdf %}<a class="publication-link" href="{{ p.pdf | relative_url }}">Paper (PDF)</a>{% endif %}
        {% if p.link %}<a class="publication-link" href="{{ p.link }}">Online</a>{% endif %}
        {% if p.slides %}<a class="publication-link" href="{{ p.slides | relative_url }}">Slides</a>{% endif %}
        {% if p.poster %}<a class="publication-link" href="{{ p.poster | relative_url }}">Poster</a>{% endif %}
        {% if p.video %}<a class="publication-link" href="{{ p.video }}">Video</a>{% endif %}
        {% if p.code %}<a class="publication-link" href="{{ p.code }}">Code</a>{% endif %}
        {% if p.demo %}<a class="publication-link" href="{{ p.demo }}">Demo</a>{% endif %}
        {% if p.dataset %}<a class="publication-link" href="{{ p.dataset }}">Dataset</a>{% endif %}
      </div>
    </div>

    {% if p.abstract %}<div id="abs-{{ forloop.index0 }}" class="publication-abstract-source" hidden>{{ p.abstract }}</div>{% endif %}
  </li>
{% endfor %}
</ul>

<div id="abstract-modal" class="abstract-modal" role="dialog" aria-modal="true" aria-labelledby="abstract-modal-title" aria-describedby="abstract-modal-content" hidden>
  <div class="abstract-modal-box" role="document">
    <button type="button" class="abstract-modal-close" aria-label="Close abstract">&times;</button>
    <h2 id="abstract-modal-title"></h2>
    <div class="abstract-modal-divider"></div>
    <h3 class="abstract-modal-heading">Abstract</h3>
    <div id="abstract-modal-content"></div>
  </div>
</div>

<script>
(function () {
  function initializePublications() {
    const modal = document.getElementById('abstract-modal');
    if (!modal) return;
    const title = document.getElementById('abstract-modal-title');
    const content = document.getElementById('abstract-modal-content');
    const closeButton = modal.querySelector('.abstract-modal-close');
    const box = modal.querySelector('.abstract-modal-box');
    let previousFocus = null;

    function openModal(button) {
      const source = document.getElementById(button.dataset.target);
      if (!source) return;
      previousFocus = document.activeElement;
      title.textContent = button.dataset.title || 'Publication';
      content.textContent = source.textContent.trim();
      modal.hidden = false;
      document.body.classList.add('abstract-modal-open');
      closeButton.focus();
    }
    function closeModal() {
      if (modal.hidden) return;
      modal.hidden = true;
      document.body.classList.remove('abstract-modal-open');
      if (previousFocus && previousFocus.isConnected) previousFocus.focus();
    }
    document.addEventListener('click', function (event) {
      const button = event.target.closest('.pub-expand');
      if (button) { openModal(button); return; }
      if (event.target === modal) closeModal();
    });
    closeButton.addEventListener('click', closeModal);
    document.addEventListener('keydown', function (event) {
      if (modal.hidden) return;
      if (event.key === 'Escape') { event.preventDefault(); closeModal(); }
      if (event.key === 'Tab') {
        const focusable = Array.from(box.querySelectorAll('button:not([disabled]), a[href], [tabindex]:not([tabindex="-1"])'))
          .filter(function (el) { return el.getClientRects().length > 0; });
        if (!focusable.length) { event.preventDefault(); closeButton.focus(); return; }
        const first = focusable[0], last = focusable[focusable.length - 1];
        if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last.focus(); }
        else if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first.focus(); }
      }
    });
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', initializePublications);
  else initializePublications();
})();
</script>
