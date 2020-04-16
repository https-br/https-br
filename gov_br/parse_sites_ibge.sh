#!/bin/bash

[ $1 ] && [ -f $1 ] || { echo "Use: $0 <municipios.csv>"; exit; }

cut -d";" -f4,5 $1 | sed 's/ //g;s/;/ /' | awk '{print "www."$2"."$1".gov.br"}' | grep -v Municipio
