#!/bin/bash
echo "enter the directory where log files are located "
read fol
echo "enter location of backup folder"
read bckup
echo "enter arc fol name"
read arc
tar -czf arc.tgz.gz ${fol}/*.log
mv arc.tgz.gz ${bckup} 
