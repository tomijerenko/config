# LUKS aliases
#alias luksunlock="sudo cryptsetup luksOpen /dev/sda1 my_encrypted_volume"
#alias lukslock="sudo cryptsetup luksClose my_encrypted_volume"
#alias lukstest="sudo cryptsetup --verbose open --test-passphrase /dev/sda1"
#alias luksrotate="sudo cryptsetup luksChangeKey /dev/sda1 -S 0"

# LUKS usage
# sudo cryptsetup open /dev/sda backup_01
# sudo mount /dev/mapper/backup_01 /media/backup_01
# sudo umount /media/backup_01
# sudo cryptsetup close backup_01


# Update & upgrade
alias apt-upgrade="sudo apt update && sudo apt upgrade && sudo apt autoremove"

# Battery
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"

# Bluetooth
alias bluetooth-enable="sudo systemctl enable bluetooth && sudo systemctl start bluetooth && sudo systemctl restart bluetooth"
alias bluetooth-disable="sudo systemctl stop bluetooth && sudo systemctl disable bluetooth"

# Sync external disks
alias sync_disks="sync_backup_disks"
sync_backup_disks () {
  # Open
  echo "sudo cryptsetup open /dev/sda backup_01"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && sudo cryptsetup open /dev/sda backup_01
  echo "sudo cryptsetup open /dev/sdb backup_02"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && sudo cryptsetup open /dev/sdb backup_02
  # Sync
  echo "rsync -chavP --stats /media/tomijerenko/backup_01/* /media/tomijerenko/backup_02/."
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && rsync -chavP --stats /media/tomijerenko/backup_01/* /media/tomijerenko/backup_02/.
  # Unmount
  echo "umount /media/tomijerenko/backup_01"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && umount /media/tomijerenko/backup_01
  echo "umount /media/tomijerenko/backup_02"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && umount /media/tomijerenko/backup_02
  # Close
  echo "sudo cryptsetup close backup_01"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && sudo cryptsetup close backup_01
  echo "sudo cryptsetup close backup_02"
  echo -n 'Confirm: ' && read 'x' && [ $x == 'y' ] && sudo cryptsetup close backup_02
}

alias k="kubectl "
alias randomstring='dd if=/dev/urandom bs=50 count=1 status=none | base64'
