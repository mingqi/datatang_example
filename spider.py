#!/usr/bin/python
import os.path
import sys


print "args is %s" % sys.argv
with open('/datatang_example/query.txt', 'r') as query_file:
    print "query.txt has:"
    print query_file.read()
