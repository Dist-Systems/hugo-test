PUBLICATIONSSOURCE = $(CURDIR)/content
PUBLICATIONSDIR = $(CURDIR)/content/publications
PEOPLEDIR = $(CURDIR)/content/people
OUTPUTDIR = $(CURDIR)/public
CONFFILE = $(BASEDIR)/pelicanconf.py
TOOLS ?= $(CURDIR)/tools

all: publications people generate

generate:
	hugo --minify
	rm -v $(OUTPUTDIR)/publications.bib

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

people: clean-people
	pipenv run python $(TOOLS)/make_people.py \
		$(TOOLS)/lab_members.csv \
		$(TOOLS)/person_template.j2 \
		$(PEOPLEDIR)

clean-people:
	[ ! -d $(PEOPLEDIR) ] || find $(PEOPLEDIR) -mindepth 1 -delete
	rm -rf $(PEOPLEDIR)

clean: clean-publications \
       clean-people 
	[ ! -d $(OUTPUTDIR) ] || find $(OUTPUTDIR) -mindepth 1 -delete
	rmdir $(OUTPUTDIR)

.PHONY: clean generate
