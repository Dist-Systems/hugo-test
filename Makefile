PUBLICATIONSSOURCE = $(CURDIR)/content
PUBLICATIONSDIR = $(CURDIR)/content/publications
OUTPUTDIR = $(CURDIR)/public
CONFFILE = $(BASEDIR)/pelicanconf.py
TOOLS ?= $(CURDIR)/tools

all: publications generate

generate:
	hugo --minify
	rm $(OUTPUTDIR)/publications.bib

# We always want to generate them from scratch
publications: clean-publications
	pipenv run python $(TOOLS)/bib2md.py \
		$(PUBLICATIONSSOURCE)/publications.bib \
		content/publications.bib \
		$(TOOLS)/bib2md.j2 \
		$(PUBLICATIONSDIR)

clean-publications:
	[ ! -d $(PUBLICATIONSDIR) ] || find $(PUBLICATIONSDIR) -mindepth 1 -delete
	rm -rf $(PUBLICATIONSDIR)

clean: clean-publications
	[ ! -d $(OUTPUTDIR) ] || find $(OUTPUTDIR) -mindepth 1 -delete
	rmdir $(OUTPUTDIR)

.PHONY: clean generate
