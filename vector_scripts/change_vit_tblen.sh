#!/bin/bash

## ## Add "_70tblen" to all txt files:
## for i in `ls *.txt`; do
##     NEWNAME=`ls $i | sed 's/_1dfe/_70tblen_1dfe/g'`
##     mv $i $NEWNAME
## done

## ## Create new files (copy) with "_40tblen":
## for i in `ls *.txt`; do
##     NEWNAME=`ls $i | sed 's/_70tblen/_40tblen/g'`
##     cp $i $NEWNAME
## done

## ## Change the conf word to enable 40 tblen in vectors (different for legacy and HT):
## ## LINES1=41   # LEGACY vectors
## ## LINES2=105  # HT vectors
## for i in `ls *1format*40tblen*_ble_input.txt`; do
##     echo "Running -> |sed -i '41s/^01/03/g' $i|"
##     sed -i '41s/^01/03/g' ${i} 
## done
## for i in `ls *2format*40tblen*_ble_input.txt`; do
##     echo "Running -> |sed -i '105s/^01/03/g' $i|"
##     sed -i '105s/^01/03/g' ${i} 
## done
    
## ## Change back the tblen in 70tblen vectors:
## for i in `ls *1format*70tblen*_ble_input.txt`; do
##     echo "Running -> |sed -i '41s/^03/01/g' $i|"
##     sed -i '41s/^03/01/g' ${i} 
## done
## for i in `ls *2format*70tblen*_ble_input.txt`; do
##     echo "Running -> |sed -i '105s/^03/01/g' $i|"
##     sed -i '105s/^03/01/g' ${i} 
## done




