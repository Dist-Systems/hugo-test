# Seclab Website

This project utilizes the Hugo framework to generate a static website. The artifacts are generated by scripts in the `tools` directory via the commands invoked from the makefile.

There is an accompanying Dockerfile in the registry that accompanys this repo: https://git.seclab.cs.ucsb.edu/seclab/website/container_registry

## Getting started

There are 2 main ways to get started with this project:

- Docker option (just take a look at the website served locally):
  - `docker pull git.seclab.cs.ucsb.edu:4567/seclab/website`
  - `docker run -it --rm -p 1313:1313 seclab/website`
- clone the repo if you would like to make changes:
  - `git clone git@git.seclab.cs.ucsb.edu:seclab/website.git`

## Adding members
_todo_: add an official process

## Adding Publications
_todo_: add an official process

## Example Publication BibTeX Entry

    @InProceedings{ecs2000-system,
        # bibtex required
        title     = {{System: The Title of the Paper}},                         (important: title case)
        author    = {Lastname, Firstname and Second Lastname, Second Firstname},
        booktitle = {Proceedings of the 21st Example Conference on Security},
        series    = {ECS},
        month     = aug,
        year      = {2000},

        # bibtex optional
        abstract  = {},                                                         (defaults to empty)

        # custom required
        kind      = {conference/journal/magazine},                              (used to split on website)
        timestamp = {2000-08-01},                                               (day of publication)

        # custom optional
        paper     = {yes/no},                                                   (creates paper link, defaults to no)
        slides    = {yes/no},                                                   (creates slides link, defaults to no)
        url       = {},                                                         (creates link to publisher, defaults to none)
        video_url = {},                                                         (creates link to video, defaults to none)
    }
