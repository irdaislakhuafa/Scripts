alias kcli="kdeconnect-cli"

kclid() {
    deviceID="$(kcli -l | fzf | cut -d ':' -f 2 | awk '{print $1}' )"
    kcli -d $deviceID
}

kclida() {
    deviceID="$(kcli -a | fzf | cut -d ':' -f 2 | awk '{print $1}' )"
    kcli -d $deviceID
}
