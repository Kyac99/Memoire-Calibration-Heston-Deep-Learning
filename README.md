# Mémoire : Calibration accélérée du modèle de Heston par Deep Learning

[![LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🎯 Description

Ce mémoire présente une recherche approfondie sur l'application du Deep Learning à la calibration du modèle de Heston pour le pricing d'options. L'étude démontre comment les techniques d'apprentissage automatique peuvent révolutionner la calibration traditionnelle, offrant une accélération spectaculaire (facteur 11x) tout en améliorant la précision et la robustesse.

**Titre complet :** *Calibration accélérée du modèle de Heston par Deep Learning : conception, implémentation et benchmarks sur données SPX Weekly*

## 📚 Structure du mémoire

Le mémoire est organisé en 6 chapitres principaux (70-80 pages) :

### Chapitre 1 : Introduction
- Contexte et motivation
- Problématique centrale et enjeux
- Objectifs de recherche
- Méthodologie générale

### Chapitre 2 : Revue de littérature
- Modèles de volatilité stochastique
- Méthodes de calibration traditionnelles
- Deep Learning en finance
- Approches émergentes

### Chapitre 3 : Présentation des données
- Dataset SPX Weekly
- Préprocessing
- Analyse exploratoire

### Chapitre 4 : Méthodologie
- Modèle de Heston
- Approche en deux étapes
- Architecture neuronale
- Calibration hybride

### Chapitre 5 : Résultats et discussions
- Tests comparatifs
- Validation empirique
- Analyse de robustesse

### Chapitre 6 : Conclusions
- Synthèse des contributions
- Implications pratiques
- Perspectives futures

## 🚀 Résultats principaux

### Performance computationnelle
| Méthode | Temps moyen | Taux convergence | RMSE |
|---------|-------------|------------------|------|
| Traditionnelle | 23.4 s | 87% | 0.092 |
| Deep Learning | 2.1 s | 98% | 0.089 |
| **Amélioration** | **11.1x** | **+11 pp** | **-3.3%** |

## 📁 Organisation des fichiers

```
├── memoire_principal.tex        # Document principal
├── introduction.tex             # Chapitre 1
├── revue_litterature.tex       # Chapitre 2
├── presentation_donnees.tex    # Chapitre 3
├── methodologie.tex            # Chapitre 4
├── resultats_discussions.tex   # Chapitre 5
├── conclusions.tex             # Chapitre 6
├── annexes.tex                 # Annexes
├── references.bib              # Bibliographie
└── README.md                   # Documentation
```

## 🛠️ Compilation LaTeX

```bash
# Compilation complète
pdflatex memoire_principal.tex
bibtex memoire_principal
pdflatex memoire_principal.tex
pdflatex memoire_principal.tex
```

## 🔗 Références principales

Cette recherche s'appuie sur :
- **Bayer & Stemper (2018)** : Deep calibration of rough stochastic volatility models
- **Stone (2019)** : Calibrating rough volatility models with CNNs
- **Heston (1993)** : A closed-form solution for options with stochastic volatility

## 💡 Contributions

- ✅ Validation empirique approche Bayer-Stemper
- ✅ Extension aux options SPX Weekly
- ✅ Framework de calibration hybride
- ✅ Benchmarks reproductibles

## 📞 Contact

**Auteur :** Pêgdwendé Yacouba KONSEIGA  
**GitHub :** [@Kyac99](https://github.com/Kyac99)

---

**Note :** Travail de recherche académique à des fins éducatives.
