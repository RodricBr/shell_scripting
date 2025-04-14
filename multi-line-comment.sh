# Had this one for a long that that I forgot to publish, but in bash you can't really make a multi line comment like with other popular languages
# Instead of using "#" for every line we can create a here document with a delimiter next to it so that bash reads the subsequent lines of input
# until it finds a line that consists only of the given delimiter.
# Here's an example:

<< ////
echo -e "Random stuff that will be ignored"
file /etc/passwd && whoami
exit 1;
////

# In the example above, the delimiter that we gave is "////" but could be anything else, like a "----", or maybe a "~~~~" which would be a sequence
# of characters that could be easily identified by the user as a multi line comment.
