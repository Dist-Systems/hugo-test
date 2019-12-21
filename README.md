
# Active development
 - This is where the code should live: https://git.seclab.cs.ucsb.edu/seclab/website
 - Here is some reading: https://git.seclab.cs.ucsb.edu/help/user/packages/container_registry/index

## TODO

* Docker image that includes Python virtualenv and Hugo
  * Check out the example: https://git.seclab.cs.ucsb.edu/iseclab/iseclab.pages.seclab.cs.ucsb.edu/container_registry
* Use CI to rebuild on push (.gitlab-ci.yml)
* Hugo static executable
* minify static executable?

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

## Why all the extra files?
 - pipenv manages requirements and environment
    - https://realpython.com/pipenv-guide/

