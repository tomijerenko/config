# LUKS aliases
#alias luksunlock="sudo cryptsetup luksOpen /dev/sda1 my_encrypted_volume"
#alias lukslock="sudo cryptsetup luksClose my_encrypted_volume"
#alias lukstest="sudo cryptsetup --verbose open --test-passphrase /dev/sda1"
#alias luksrotate="sudo cryptsetup luksChangeKey /dev/sda1 -S 0"


# Update & upgrade
alias apt-upgrade="sudo apt update && sudo apt upgrade && sudo apt autoremove"

# Battery
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"

# Bluetooth
alias bluetooth-enable="sudo systemctl enable bluetooth && sudo systemctl start bluetooth && sudo systemctl restart bluetooth"
alias bluetooth-disable="sudo systemctl stop bluetooth && sudo systemctl disable bluetooth"
