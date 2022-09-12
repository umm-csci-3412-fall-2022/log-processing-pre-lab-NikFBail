#1 /usr/bin/bash
# write regex to extract desired content
# and display it in the preferred way

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt
