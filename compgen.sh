# compgen is a complementary programmable built-in.
# The option flag "-c" shows all the commands possible on the operational system. (If ran on WSL, it'll show all .dlls, .exe, .mof, .sys and etc)

$ compgen -abcdefgjksuv
-a --> Alias
-b --> Builtins
-c --> Commands
-d --> Directory (compgen -d outputs the directories of the current user location (.) )
-e --> Exported Shell Variables
-f --> File and functions
-g --> Groups
-j --> Jobs
-k --> Shell reserved words
-s --> Services
-u --> userAlias names
-v --> Shell variables
