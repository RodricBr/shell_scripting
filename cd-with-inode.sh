# I have an explanation on my Bash-Professional repository about inodes.
# If you're interested, come take a look: https://github.com/RodricBr/Bash-Professional#--linked-files--symbolic-links--hard-links-back-to-top

# Listing the directories using "-i" ls flag to show file's inodes.
$ ls -lai
 323133273263833942 drwxrwxrwx 1 rodric rodric   4096 Jun 32 21:69  .txt
# As example, I'm using a file without name, but I added ".txt" so that you could read it.

# Changing directory with "cd" builtin with the inode of the unnamed directory.
$ cd "$(find "$PWD" -inum 323133273263833942)" # Couldn't manage to make "find ... -exec cd {} \;" work...

# Notice: A file can have more than one name (hardlink), but directories have just one link in most of the filesystems.
# Also notice that the concept of inode is local to the filesystem, so that in two different devices (partition and such) the uniqueness is not guaranteed.
