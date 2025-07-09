#!/bin/bash

VPN_NAME="Earthbound Trading"

# Verifica se está conectada
IS_CONNECTED=$(nmcli -t -f NAME,TYPE con show --active | grep -w "$VPN_NAME:vpn")

if [ -n "$IS_CONNECTED" ]; then
    # Se já está conectada, desconecta
    nmcli con down "$VPN_NAME" >/dev/null 2>&1
    STATUS="disconnected"
    ICON=""
    COLOR="#FF5555"
    CLASS="disconnected"
else
    # Se não está conectada, tenta conectar
    if nmcli con up "$VPN_NAME" >/dev/null 2>&1; then
        STATUS="connected"
        ICON=""
        COLOR="#55FF55"
        CLASS="connected"
    else
        STATUS="error"
        ICON=""
        COLOR="#FF0000"
        CLASS="error"
    fi
fi

# Saída JSON para o Waybar
echo "{\"text\": \"$ICON\", \"tooltip\": \"VPN: $STATUS\", \"class\": \"$CLASS\", \"color\": \"$COLOR\"}"
