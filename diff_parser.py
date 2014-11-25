#!/usr/bin/python
# vim: set fileencoding=utf8 :
# Author : meetshah1995 

from HTMLParser import HTMLParser
import re
import sys

class MyParser(HTMLParser):
    inside_span = False

    def __init__(self,file):
        HTMLParser.__init__(self)
        f = open(file)
        self.feed(f.read())

    def handle_starttag(self,tag,attrs):
        if tag == 'title':
            self.inside_span=True

    def handle_data(self,data):
        data = data.strip(' \t\r\n')
        if data != "":
            if self.inside_span:
                data = re.sub('\n',' ',data)
                data = re.sub('\s\s+',' ',data)
                print data

    def handle_endtag(self,tag):
        if tag == 'title':
            self.inside_span=False

MyParser(sys.argv[1])