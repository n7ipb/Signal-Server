#!/bin/bash
#
#  
#  I maintain individual plot files for dozens of sites like this one to generate 
#  standard format .kmz files.
# 
# Haystack -121.727227,47.808024
date
/usr/local/bin/genpng.sh -lat 47.808024 -lon -121.727227 -txh 50 -f 224 -erp 50 -rxh 5 -rt -110 -R 100 -o Haystack | genkmz.sh
date
