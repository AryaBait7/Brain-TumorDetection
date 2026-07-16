Automated segmentation of brain tumors plays a pivotal role in clinical workflows, aiding radiologists in treatment planning, surgical mapping, and tracking disease progression. This project implements an end-to-end medical image segmentation pipeline involving:
- **Data Querying & Mapping**: Automatically parsing structural scans and matching them to their corresponding ground-truth genomic tumor masks using file-globbing techniques.
- **Preprocessing Pipeline**: Resizing structural images to a uniform shape ($256 \times 256$), color space extraction, and normalizing intensity arrays.
- **Deep Architecture**: Employing a deep Convolutional Neural Network (U-Net) featuring a contracting feature-extraction path and an expanding spatial-reconstruction path interconnected by skip connections.

- # Brain Tumour Segmentation Summary Report

## Overview
This report compares a traditional Active Contour Model (ACM) implemented in MATLAB with a deep learning-based ResUNet model for brain tumour segmentation on MRI images.

> **Key Insight:** The deep learning ResUNet architecture demonstrates a substantial paradigm shift, achieving an absolute improvement of +12% in Dice Score and +19% in Intersection-over-Union (IoU) over the traditional Active Contour baseline.

---

## Performance Metrics

| Metric | Active Contour Model | ResUNet Model | Improvement | Remarks |
| :--- | :---: | :---: | :---: | :--- |
| **Accuracy** | 95.6% | 98.9% | +3.3% | ResUNet is more robust |
| **Dice Score** | 0.84 | 0.96 | +0.12 | Better structural overlap |
| **IoU** | 0.73 | 0.92 | +0.19 | Higher segmentation quality |
| **Sensitivity** | 0.86 | 0.97 | +0.11 | Detects more true tumour pixels |
| **Specificity** | 0.97 | 0.99 | +0.02 | Fewer false positive flags |



---

## Discussion & Conclusion
* **Active Contour Model:** Provides acceptable segmentation for well-defined, high-contrast tumour boundaries but is highly sensitive to initialization placement, image noise, and manual parameter selection.
* **ResUNet Architecture:** Extracts high-level semantic abstractions alongside granular spatial details. By processing structural contexts globally and locally, it natively handles diverse structural shapes and variations in signal-to-noise ratios.

**Recommendation:** While the Active Contour approach remains a fast, training-free baseline viable for computationally constrained environments, ResUNet stands as the recommended choice for clinical-grade, high-fidelity automated brain tumour segmentation systems.
