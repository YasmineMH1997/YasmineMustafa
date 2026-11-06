---
layout: page
title: "Teaching"
permalink: /teaching/
header: false
---

<link rel="stylesheet" href="{{ '/assets/css/teaching-custom.css' | relative_url }}">

<section class="teaching-page" aria-label="Teaching and courses">
  <header class="teaching-intro">
    <h2>Teaching</h2>
    <p>My teaching connects theoretical foundations with practical problem-solving. Through programming, computational experiments, and applied projects, I encourage students to develop analytical reasoning, technical confidence, and independent thinking.</p>
  </header>

  <div class="teaching-section-heading">
    <h3>Courses</h3>
    <span>American University in Cairo</span>
  </div>

  <div class="teaching-course-list">
    <article class="teaching-course">
      <span class="teaching-code">DSCI 1411</span>
      <div class="teaching-course-main">
        <h4>Fundamentals of Data Science I</h4>
        <details><summary>Read description</summary>
          <p>Introduces foundational data science concepts through statistical reasoning, data preparation, exploratory analysis, and visualization. Students use R to investigate datasets, recognize patterns, and communicate evidence-based findings.</p>
        </details>
      </div>
    </article>

    <article class="teaching-course">
      <span class="teaching-code">DSCI 2411</span>
      <div class="teaching-course-main">
        <h4>Data Visualization</h4>
        <details><summary>Read description</summary>
          <p>Explores ways to transform complex datasets into clear, informative visual representations. Topics include visual perception, effective chart design, exploratory visualization, and communicating insights through thoughtful visual narratives.</p>
        </details>
      </div>
    </article>

    <article class="teaching-course">
      <span class="teaching-code">DSCI 3411</span>
      <div class="teaching-course-main">
        <h4>Fundamentals of Simulation</h4>
        <details><summary>Read description</summary>
          <p>Introduces computational modeling and simulation for analyzing real-world systems. Students investigate stochastic behavior, discrete-event simulation, resource constraints, and system performance through programming-based experiments.</p>
        </details>
      </div>
    </article>

    <article class="teaching-course">
      <span class="teaching-code">DSCI 4411</span>
      <div class="teaching-course-main">
        <h4>Fundamentals of Data Mining</h4>
        <details><summary>Read description</summary>
          <p>Examines computational approaches for discovering useful patterns in data. Students explore classification, clustering, association analysis, and model evaluation, with attention to interpreting results in practical settings.</p>
        </details>
      </div>
    </article>

    <article class="teaching-course">
      <span class="teaching-code">DSCI 4412</span>
      <div class="teaching-course-main">
        <h4>Introduction to Big Data Technologies</h4>
        <details><summary>Read description</summary>
          <p>Introduces the tools and computational architectures used to manage and analyze large datasets. Emphasis is placed on distributed processing, scalable analytics, and the practical challenges of working with data at scale.</p>
        </details>
      </div>
    </article>
  </div>
</section>

<script>
document.querySelectorAll('.teaching-course details').forEach(function(details) {
  details.addEventListener('toggle', function() {
    details.querySelector('summary').textContent = details.open ? 'Hide description' : 'Read description';
  });
});
</script>
