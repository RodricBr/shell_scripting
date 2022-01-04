#!/usr/bin/bash

if [[ -z "$*" ]];then
  printf "\nUso: $0 [HOST]\n"
else
  printf 'A\nAAAA\nAFSDB\nAPL\nCAA\nCDNSKEY\nCDS\nCERT\nCNAME\nCSYNC\nDHCID\nDLV\nDNAME\nDNSKEY\nDS\nEUI48\nEUI64\nHINFO\nHIP\nIPSECKEY\nKEY\nKX\nLOC\nMX\nNAPTR\nNS\nNSEC\nNSEC3\nNSEC3PARAM\nOPENPGPKEY\nPTR\nRRSIG\nRP\nSIG\nSMIMEA\nSOA\nSRV\nSSHFP\nTA\nTKEY\nTLSA\nTSIG\nTXT\nURI\nMD\nMF\nMAILA\nMB\nMG\nMR\nMINFO\nMAILB\nWKS\nNULL\nA6\nNXT\nKEY\nSIG\nRP\nX25\nISDN\nRT\nNSAP\nNSAP-PTR\nPX\nAPL\nSINK\nGPOS\nUNSPEC\nSPF\nNINFO\nRKEY\nTALINK\nNID\nL32\nL64\nLP\nDOA' > __dns.records
  printf "\n\e[1;32m ---[ Realizando o scan de DNS ]---\e[0m\n\n"
  for __dnsrecord__ in $(cat __dns.records);do
    host -t $__dnsrecord__ "$1" | grep -iEv 'has no|SERVFAIL' 2>/dev/null
  done
  rm -f __dns.records
fi
