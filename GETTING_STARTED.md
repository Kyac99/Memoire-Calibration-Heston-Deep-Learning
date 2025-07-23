# Guide de démarrage rapide

Ce guide vous aide à compiler et utiliser le mémoire "Calibration accélérée du modèle de Heston par Deep Learning".

## 📋 Prérequis

### Distribution LaTeX

Vous devez avoir une distribution LaTeX complète installée :

**Ubuntu/Debian :**
```bash
sudo apt-get update
sudo apt-get install texlive-full
sudo apt-get install texlive-lang-french
sudo apt-get install latexmk
```

**macOS avec Homebrew :**
```bash
brew install --cask mactex
```

**Windows :**
- Téléchargez et installez [MiKTeX](https://miktex.org/) ou [TeX Live](https://www.tug.org/texlive/)

### Packages LaTeX requis

Le document utilise les packages suivants (normalement inclus avec texlive-full) :
- `babel` (français)
- `amsmath`, `amssymb`, `amsthm`
- `graphicx`, `float`, `tikz`, `pgfplots`
- `booktabs`, `array`, `longtable`
- `hyperref`, `natbib`
- `algorithm`, `algorithmic`, `listings`

## 🚀 Compilation rapide

### Méthode 1 : Makefile (recommandée)

```bash
# Compilation complète avec bibliographie
make

# Compilation rapide sans bibliographie  
make quick

# Compilation continue (recompile automatiquement)
make watch

# Nettoyage des fichiers temporaires
make clean
```

### Méthode 2 : Commandes manuelles

```bash
# Compilation complète
pdflatex memoire_principal.tex
bibtex memoire_principal
pdflatex memoire_principal.tex
pdflatex memoire_principal.tex
```

### Méthode 3 : latexmk

```bash
# Compilation automatique avec gestion des dépendances
latexmk -pdf memoire_principal.tex
```

## 📁 Structure des fichiers

```
Memoire-Calibration-Heston-Deep-Learning/
├── memoire_principal.tex        # Document maître
├── introduction.tex             # Chapitre 1
├── revue_litterature.tex       # Chapitre 2  
├── presentation_donnees.tex    # Chapitre 3
├── methodologie.tex            # Chapitre 4
├── resultats_discussions.tex   # Chapitre 5
├── conclusions.tex             # Chapitre 6
├── annexes.tex                 # Annexes
├── references.bib              # Bibliographie
├── Makefile                    # Automatisation compilation
├── .gitignore                  # Fichiers ignorés par Git
├── LICENSE                     # Licence MIT
├── README.md                   # Documentation principale
└── GETTING_STARTED.md          # Ce guide
```

## 🔧 Résolution de problèmes

### Erreur "Package not found"

```bash
# Ubuntu/Debian
sudo apt-get install texlive-latex-extra texlive-fonts-recommended

# Ou installer package spécifique
sudo tlmgr install [nom-du-package]
```

### Erreur de compilation bibliographie

```bash
# Vérifier que bibtex est installé
which bibtex

# Recompiler complètement
make cleanall
make
```

### Caractères spéciaux non affichés

Assurez-vous que votre éditeur utilise l'encodage UTF-8 et que le package `inputenc` est configuré :
```latex
\usepackage[utf8]{inputenc}
```

### Erreur de mémoire

Pour les gros documents, augmentez les limites LaTeX :
```bash
# Ajouter à ~/.bashrc ou équivalent
export max_print_line=1000
export error_line=254
export half_error_line=238
```

## 📖 Utilisation du mémoire

### Pour les étudiants

1. **Lecture séquentielle** recommandée
2. **Focus sur l'introduction** pour le contexte
3. **Étude approfondie de la méthodologie** pour la compréhension technique
4. **Analyse des résultats** pour les implications pratiques

### Pour les chercheurs

1. **Revue de littérature** (Chapitre 2) pour l'état de l'art
2. **Méthodologie** (Chapitre 4) pour les détails techniques
3. **Annexes** pour l'implémentation
4. **Bibliographie** pour les références

### Pour les praticiens

1. **Introduction** pour comprendre les enjeux
2. **Résultats** (Chapitre 5) pour les performances
3. **Conclusions** (Chapitre 6) pour les recommandations
4. **Annexes** pour les spécifications techniques

## 🔍 Validation de la compilation

Après compilation réussie, vérifiez :

```bash
# Vérifier que le PDF est généré
ls -la memoire_principal.pdf

# Compter les pages (doit être ~70-80 pages)
pdfinfo memoire_principal.pdf | grep Pages

# Vérifier les liens internes
make check  # Si disponible
```

## 📊 Métriques du document

Le mémoire final devrait contenir approximativement :
- **Pages totales :** 70-80 pages
- **Chapitres :** 6 chapitres principaux
- **Références :** 100+ références bibliographiques
- **Tableaux :** 20+ tableaux de résultats
- **Figures :** Diagrammes et graphiques
- **Algorithmes :** 5+ algorithmes détaillés

## 🛠️ Personnalisation

### Modifier les métadonnées

Éditez `memoire_principal.tex` pour :
- Nom de l'auteur
- Université et département
- Directeur de mémoire
- Date de soutenance

```latex
\author{
    Votre Nom\\[0.5cm]
    Mémoire de Master en Finance Quantitative\\[0.3cm]
    Sous la direction de [Nom du Directeur]\\[0.5cm]
    \textit{Votre Université}\\
    \textit{Votre Faculté}\\
    \textit{Votre Département}
}
```

### Ajouter du contenu

Pour ajouter des sections :
1. Créez un nouveau fichier `.tex`
2. Ajoutez `\input{nouveau_fichier}` dans `memoire_principal.tex`
3. Recompilez

### Modifier la bibliographie

1. Éditez `references.bib`
2. Utilisez `\citep{clé}` ou `\citet{clé}` dans le texte
3. Recompilez avec `make` pour mettre à jour

## 📞 Support

### Problèmes LaTeX
- [Stack Overflow LaTeX](https://stackoverflow.com/questions/tagged/latex)
- [TeX Stack Exchange](https://tex.stackexchange.com/)

### Problèmes spécifiques au mémoire
- Créez une issue sur le [repository GitHub](https://github.com/Kyac99/Memoire-Calibration-Heston-Deep-Learning/issues)
- Consultez la documentation dans `README.md`

## ✅ Checklist de finalisation

Avant soumission, vérifiez :

- [ ] Compilation sans erreurs
- [ ] Toutes les références citées
- [ ] Numérotation des pages correcte
- [ ] Table des matières à jour
- [ ] Liens hypertextes fonctionnels
- [ ] Orthographe et grammaire relues
- [ ] Figures et tableaux légendés
- [ ] Annexes complètes
- [ ] Métadonnées PDF correctes

## 🎯 Prochaines étapes

Après compilation réussie :

1. **Relecture complète** du PDF généré
2. **Validation** par le directeur de mémoire
3. **Préparation** de la soutenance
4. **Archivage** selon les exigences institutionnelles

Bonne compilation ! 🎓
