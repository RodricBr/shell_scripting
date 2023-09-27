# In WSL we can ivoke powershell/cmd inside of the shell bash, creating a variety of interesting and useful stuff...

printf "Isso é o bash sendo executado no Windows através do WSL\n"

# Linux echo and windows's "printf"
echo -e "- O print do Windows é muito feio\n"
powershell.exe -command write-host "Isso é o PowerShell sendo executado pelo bash"

# Executing the command "tasklist" from powershell alongside cut and head which are gnu linux commands
echo -e "\n- Tasklist sendo executado\n"
powershell.exe -command tasklist | cut -c1-25 | head -n5

# Opening a registry process that I added in regedit. The process name is "Processos"
# Using "query" to query the registry "Processos"
echo -e "\n- Abrindo processos do Windows\n"
powershell.exe -command query Processos

# Opening the windows calculator
echo -e "\n- Calculadora do Windows\n"
powershell.exe -command calc.exe
