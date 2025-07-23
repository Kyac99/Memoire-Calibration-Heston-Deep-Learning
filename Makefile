# Makefile pour la compilation du mémoire LaTeX

# Variables
MAIN = memoire_principal
TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
PDF = $(MAIN).pdf

# Compilation par défaut
all: $(PDF)

# Compilation complète avec bibliographie
$(PDF): $(TEX_FILES) $(BIB_FILES)
	@echo "Compilation LaTeX en cours..."
	pdflatex $(MAIN).tex
	@echo "Compilation de la bibliographie..."
	bibtex $(MAIN)
	@echo "Seconde compilation LaTeX..."
	pdflatex $(MAIN).tex
	@echo "Compilation finale..."
	pdflatex $(MAIN).tex
	@echo "Compilation terminée: $(PDF)"

# Compilation rapide (sans bibliographie)
quick:
	@echo "Compilation rapide..."
	pdflatex $(MAIN).tex

# Compilation continue avec latexmk
watch:
	@echo "Compilation continue activée (Ctrl+C pour arrêter)"
	latexmk -pdf -pvc $(MAIN).tex

# Nettoyage des fichiers temporaires
clean:
	@echo "Nettoyage des fichiers temporaires..."
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.lof *.lot *.loa
	rm -f *.fdb_latexmk *.fls *.synctex.gz *.nav *.snm *.vrb
	rm -f *~ *.backup *.bak

# Nettoyage complet (inclut le PDF)
cleanall: clean
	@echo "Suppression du PDF..."
	rm -f $(PDF)

# Validation syntaxe LaTeX
check:
	@echo "Vérification de la syntaxe LaTeX..."
	@for file in $(TEX_FILES); do \
		echo "Vérification: $$file"; \
		chktex $$file || true; \
	done

# Comptage de mots approximatif
wordcount:
	@echo "Comptage de mots (approximatif):"
	@texcount $(MAIN).tex

# Installation des packages LaTeX requis (Ubuntu/Debian)
install-deps:
	@echo "Installation des dépendances LaTeX..."
	sudo apt-get update
	sudo apt-get install -y texlive-full
	sudo apt-get install -y texlive-lang-french
	sudo apt-get install -y latexmk
	sudo apt-get install -y chktex

# Aide
help:
	@echo "Commandes disponibles:"
	@echo "  all       - Compilation complète avec bibliographie"
	@echo "  quick     - Compilation rapide sans bibliographie"
	@echo "  watch     - Compilation continue (latexmk)"
	@echo "  clean     - Supprime les fichiers temporaires"
	@echo "  cleanall  - Supprime tout (temporaires + PDF)"
	@echo "  check     - Vérifie la syntaxe LaTeX"
	@echo "  wordcount - Compte les mots approximativement"
	@echo "  install-deps - Installe les dépendances (Ubuntu/Debian)"
	@echo "  help      - Affiche cette aide"

# Archive pour soumission
archive:
	@echo "Création de l'archive pour soumission..."
	mkdir -p submission
	cp $(TEX_FILES) $(BIB_FILES) submission/
	cp $(PDF) submission/ 2>/dev/null || true
	tar -czf memoire_$(shell date +%Y%m%d_%H%M).tar.gz submission/
	rm -rf submission/
	@echo "Archive créée: memoire_$(shell date +%Y%m%d_%H%M).tar.gz"

# Validation finale avant soumission
validate: clean all check
	@echo "Validation finale réussie!"

.PHONY: all quick watch clean cleanall check wordcount install-deps help archive validate
