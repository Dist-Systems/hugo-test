# Test of Website on github with hugo 

took the HUGO website from gitlab and tried to build it with githib actions...

## Example Publication BibTeX Entry

    @InProceedings{ecs2000-system,                                              (PDF name must match this name. For example: ecs2000-system.pdf)
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
        paper     = {yes/no},                                                   (creates link to paper if there is a file with the right name, defaults to no)
        slides    = {yes/no},                                                   (creates slides link, defaults to no)
        url       = {},                                                         (creates link to publisher, defaults to none)
        video_url = {},                                                         (creates link to video, defaults to none)
    }
