socat -ddd TCP-LISTEN:<LISTENINGPORT>,fork TCP:<FORWARDEDIP>:<FORWARDEDPORT> #<--- This command use socat to open a <LISTENINGPORT> on a intermediary machine and forward the connection over <FORWARDEDIP>:<FORWARDEDPORT>.
