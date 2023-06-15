# While pressing TAB with cd (command), by default the user will get a output with a list of files. Something like this:
epic-progr.sh                abc.png           ÇÇÇ.hell
temporary-file2.tmp          ayo.png           .txt
memtop                       script.sh

# But what if I have a file that doesn't exist on my keyboard, or will have compability issues when trying to execute?

# That's why we use the tab rotate. Since we can make TAB rotate the available folders instead of listing them.
# To enable it we'll have to create a file on the home directory called ".inputrc" of your current or desired user,
# or edit the inputrc for everybody on the system. (Changing the contents of /etc/inputrc)
# I wanted to create a sym link so I'll use "ln":
$ ln -s /etc/inputrc .inputrc # (to edit .inputrc sym link you'll have to be root)

# Editing and adding the configuration:
$ vim .inputrc

# Add the following on the end of the .inputrc file:
"\C-i": menu-complete
"\e[Z": "\e-1\C-i"
# Write and quit.

# On the terminal, press "Ctrl + x" and "Ctrl + r" to make it effective.
# Now, when we press TAB with "cd", the available folders shall be shown one by one instead of the list.
# Rotate foward: cd + [TAB]
# Rotate backwards: cd + [SHIFT] + [TAB]
