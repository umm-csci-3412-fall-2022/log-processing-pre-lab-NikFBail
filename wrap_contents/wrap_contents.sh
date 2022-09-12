#! usr/bin/sh
# automate wrapping content
# takes 3 arguments:
# name of file to be wrapped
# name used to specify the header and footer
# name of resulting file

cat "$2"_header.html "$1" "$2"_footer.html > "$3"
