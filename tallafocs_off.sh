#!/bin/sh

IPTABLES="/sbin/iptables"

#
# Reinicia las políticas por defecto en la tabla Filter.
#
$IPTABLES -P INPUT ACCEPT
$IPTABLES -P FORWARD ACCEPT
$IPTABLES -P OUTPUT ACCEPT

#
# Reinicia las políticas por defecto en la tabla Nat.
#
$IPTABLES -t nat -P PREROUTING ACCEPT
$IPTABLES -t nat -P POSTROUTING ACCEPT
$IPTABLES -t nat -P OUTPUT ACCEPT

#
# Reinicia las políticas por defecto en la tabla Mangle.
#
$IPTABLES -t mangle -P PREROUTING ACCEPT
$IPTABLES -t mangle -P OUTPUT ACCEPT

#
# Elimina todas las reglas de las tablas Filter y Nat.
#
$IPTABLES -F
$IPTABLES -t nat -F
$IPTABLES -t mangle -F
#
# Borra todas las cadenas que no vienen por defecto con las
# tablas Filter y Nat.
#
$IPTABLES -X
$IPTABLES -t nat -X
$IPTABLES -t mangle -X

echo "Tallafocs parat..."
