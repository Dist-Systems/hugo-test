#!/usr/bin/env python3.7
# -*- coding: utf-8 -*-

import datetime
import os
import re
import sys

from pandas import DataFrame, read_csv
import pandas as pd
import jinja2

__author__ = "Noah Spahn <ncs@cs.ucsb.edu>"
__description__ = """Generates people entries from a data file"""
__version__ = "0.0.0"


def main():
    """

    """

    if len(sys.argv) != 4:
        print("wrong arg count") 
    else:
        ppl_file = sys.argv[1]
        template_filename = os.path.normpath(sys.argv[2])
        out_directory = os.path.normpath(sys.argv[3])
    
        with open(template_filename, 'r') as template_file:
            template = jinja2.Template(template_file.read())

        os.makedirs(out_directory, mode=0o700, exist_ok=True)

        df = pd.read_csv(ppl_file)
        for index, record in df.iterrows():

            # Just show the current folks for now
            if (record['public'] and record['current']):

                key = "{}{}".format(record['first_name'][0],record['last_name'])
                key = key.lower()
                person_directory = os.path.normpath(out_directory+'/'+key)
                # Make directory
                os.makedirs(person_directory, mode=0o700, exist_ok=True)

                with open("{}/{}.md".format(person_directory, 'index'), 'w+') as f:
                    f.write(template.render(record))
                    print("\t",index,record['first_name'], record['last_name'])
    
    print("\n\n")

if __name__ == "__main__":
    main()