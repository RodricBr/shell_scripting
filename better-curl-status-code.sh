cat root-domains.com | parallel -j40 -q curl -skw "CODE: %{http_code}\t  SIZE: %{size_download}\t %{url_effective}\n" -o /dev/null
#                  ^             ^    ^       ^^^                                                               ^      ^
#                  |             |    |       Silent, Insecure(HTTP), Write Out                                 |      Output to null
#                  |             |  Quote, so special characters are not interpreted by the shell   Prints the URL from stdout(cat)
#   File with domains      Number of jobs (40)
                    
