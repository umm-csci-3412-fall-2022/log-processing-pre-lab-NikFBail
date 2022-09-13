#!/usr/bin/bash
# write regex to extract desired content
# and display it in the preferred way

#$0 means the whole line, followed by the regular expression within /   /
#Finds any alphanumeric character(one or more) as the first part
#Finds any alphanumeric character(one or more) as the second part
#Puts both parts into an array groups
#Then print each part of groups
#Using contents of the r0_input.txt and moving into r0_output.txt
awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt > r0_output.txt

#Should take the name and favorite snadwich type and put them in the array
#Print them out in a numbered list
#Takes a capital letter for the name
awk 'match($0, /([A-Z]\w+).+is ([hat]\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt

#Takes a food order and if its for here or to go
#Takes a word followed by a period, possibly more than once for the first argument
#Capture whats after 'with'
#\S+ capture as many non whitespace characters in a row as possible
# < is from text file, > is put into text file
awk 'match($0, /with (\S+) (.+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"}' r2_input.txt > r2_output.txt
