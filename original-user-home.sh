# When executing a bash script program as root using sudo, the $HOME environment variable will be interpreted as the root home directory (/root)
# THis could be troublesome if you're trying to explicitly tell bash that you want the user's home directory, and not root's directory.

# To avoid this, we can set a variable that will get the user who executed sudo using sudo's "SUDO_USER" variable (assuming the user is not root)
# Man: https://www.sudo.ws/docs/man/sudo.man/#SUDO_USER

# "getent passwd" will query the system's user database (found in /etc/passwd, NIS, LDAP, etc) based on the username stored in "$SUDO_USER"
# awk will then match only string in field 6 after field separator ":" and we'll storage this into "USER_HOME" variable.
USER_HOME=$(getent passwd "$SUDO_USER" | awk -F: '{print $6}')

# We can then print $USER_HOME variable that we just set and $HOME environment variable to see the difference between them:
echo -e "\
Original user's home directory: $USER_HOME\n\
Default \$HOME variable: $HOME"



# Output with sudo:
# sudo bash original-home.sh
# Original user's home directory: /home/rodric
# Default $HOME variable: /root

# Output without running with root privileges:
# bash original-home.sh
# Original user's home directory: /home/rodric
# Default HOME variable: /home/rodric
