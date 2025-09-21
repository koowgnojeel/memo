#!/usr/bin/env python3
#-*- coding: utf-8 -*-

import sys
import os

rg0 = [
     "Show Schema"
    ,"Show Schemas"
    ,"Log Type"
    ,"Log Types"
]

rg1 = [
     "Add New"
    ,"Enter a JSON object below describing the event to test against."
]

START = False

if __name__ == "__main__":
    mArgList = sys.argv[1:]
    for f in mArgList:
        if os.path.isfile(f):
            result = []
            with open(f, 'r') as r:
                for i in r.readlines():
                    if i.strip() in rg0:
                        START = not START
                    if START and not i.strip() in rg0:
                        result.append('    '+i)
            print(f)
            print( ''.join( set(filter(None, result)) ) )

