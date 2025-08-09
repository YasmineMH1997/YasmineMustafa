---
layout: page
title: "Diagnosing Alzheimer’s Disease using Early-Late Multimodal Data Fusion with Jacobian Maps"
authors:
  - Yasmine Mustafa
  - Tie Luo
venue: "Healthcome"
year: 2023

image:
  thumb: "pubs/pub4.png"       # put a thumbnail image at images/pubs/pub4.jpg or .png
  header: ""               # no full-width banner
teaser: "We propose an efficient Early-Late Fusion (ELF) model using Jacobian maps to enhance multimodal Alzheimer’s disease diagnosis, with a subject-specific preprocessing pipeline and robust handling of missing data."

abstract: >-
  Alzheimer’s disease (AD) is a prevalent and debilitating neurodegenerative disorder impacting a large aging population. Detecting AD in all its presymptomatic and symptomatic stages is crucial for early intervention and treatment. An active research direction is to explore machine learning methods that harness multimodal data fusion to outperform human inspection of medical scans. However, existing multimodal fusion models have limitations, including redundant computation, complex architecture, and simplistic handling of missing data. Moreover, the preprocessing pipelines of medical scans remain inadequately detailed and are seldom optimized for individual subjects. In this paper, we propose an efficient early-late fusion (ELF) approach, which leverages a convolutional neural network for automated feature extraction and random forests for their competitive performance on small datasets. Additionally, we introduce a robust preprocessing pipeline that adapts to the unique characteristics of individual subjects and makes use of whole brain images rather than slices or patches. Moreover, to tackle the challenge of detecting subtle changes in brain volume, we transform images into the Jacobian domain (JD) to enhance both accuracy and robustness in our classification. Using MRI and CT images from the OASIS-3 dataset, our experiments demonstrate the effectiveness of the ELF approach in classifying AD into four stages with an accuracy of 97.19%.

pdf: "https://arxiv.org/pdf/2310.16936"
link: "https://ieeexplore.ieee.org/abstract/document/10472348"   # abstract/project page
slides: "/files/papers/Healthcom-Slides-V2.pdf"                                # leave empty if none
          
---
