# Alias settings:

alias gci='ls -lh'
alias ls='ls --color=auto --human-readable'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias la='ls -la'
alias ll='ls -ll'
alias mkdir='mkdir -pv'
alias agp="~/Documents/scriptingstuff/bashscripts/autogitpull/autogitpull"
alias sz='source ~/.config/fish/config.fish'
alias ez='vim ~/.config/fish/config.fish'
alias ea='vim ~/.config/fish/aliases.fish'
#Copy with a progess bar
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
#See the following command for a nice, creative way to circumvent 'sudo +
#redirection'
alias freshfw="sudo ~/Documents/scriptingstuff/iptablescripts/firewall_with_vpn && sudo iptables-save | sudo dd of=/etc/iptables/iptables.rules"
alias debugfw="sudo ~/Documents/scriptingstuff/iptablescripts/firewall_without_vpn_debug"
alias wlandown="sudo ip link set wlp1s0 down"
alias startvpn="sudo openvpn ~/Documents/AzireVPN-se.ovpn"
alias sctl="sudo systemctl"
alias diff="colordiff"
alias cn="~/Documents/scriptingstuff/bashscripts/connector/connector"
alias au="~/Documents/scriptingstuff/bashscripts/auracle_updater/auracle_updater"
alias bl="battery_level"
alias bp="battery_percentage"
alias bc="bc -l"
alias installapps="/home/biggs/Documents/scriptingstuff/bashscripts/adbwrapper/adbwrapper"
alias cz="ssh reinejo@login.zedat.fu-berlin.de"
alias open="xdg-open"
alias please="sudo"
alias rp="vim src/main.rs"
alias ip="ip --color"
alias ipa="ip --brief --color addr"
alias ipl="ip --brief --color link"
alias bpo="bluetoothctl power on"
alias kw="date +%V"
