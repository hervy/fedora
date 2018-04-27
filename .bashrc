# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

#if [[ "$TERM" != "screen-256color" ]]
#then
#    tmux attach-session -t "$USER" || tmux new-session -s "$USER"
#    exit
#fi
# User specific aliases and functions

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

#varian fedora : DNF
alias fu="sudo dnf update"
alias fi="sudo dnf install"
alias fr="sudo dnf remove"
alias fs="dnf search"
alias fc="dnf clean all"
alias fgl="sudo dnf grouplist -v"
alias fgi="dnf groupinfo"
alias fif="dnf info"

#varian redhat/centos : YUM
alias cu="sudo yum update"
alias ci="sudo yum install"
alias cr="sudo yum remove"
alias cs="yum search"
alias cc="yum clean all"
alias cgl="sudo yum grouplist -v"
alias cgi="yum groupinfo"
alias cif="yum info"

#bootable linux & windows
alias ddl="sudo dd status=progress bs=1M"
alias ddw="sudo woeusb --device"

#cmus
alias cm="cmus"
alias mp="moc"

cari () {
	KEYWORD=$@
	find -name "*${KEYWORD}*"
}

#install rpm-fusion-fedora
alias install-rpmfusion-fedora="sudo dnf -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

#install rpm-fusion-centos
alias install-rpmfusion-centos="sudo yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/el/updates/6/i386/rpmfusion-free-release-6-1.noarch.rpm http://download1.rpmfusion.org/nonfree/el/updates/6/i386/rpmfusion-nonfree-release-6-1.noarch.rpm"

#install nux for centos
alias install-nux="sudo yum -y install http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm"

#install remi for centos
alias install-remi="sudo yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm"

#install epel for centos
alias install-epel="sudo yum -y install epel-release"

#install-basic for centos (unrar rpmfusion)
alias install-basic-centos="sudo yum -y install glances mpd ncmpcpp terminus-fonts-console terminus-fonts ntfsprogs pulseaudio-utils p7zip p7zip-plugins arandr figlet tmux udisks2 vim neovim ntfs-3g fuse htop inxi mc screenfetch openssh sshfs alsa-utils composer youtube-dl unrar NetworkManager-tui mupdf ncmpcpp rtorrent srm fontawesome-fonts fontawesome-fonts-web icedtea-web ffmpeg HandBrake-{gui,cli} gstreamer{,1}-plugins-ugly gstreamer-plugins-bad-nonfree gstreamer1-plugins-bad-freeworld zlib.i686 ncurses-libs.i686 bzip2-libs.i686 postgresql-libs nodejs npm p7zip p7zip-plugins unrar mesa-dri-drivers mesa-libGL mariadb mariadb-server httpd php php-mysqlnd php-opcache phpmyadmin"

alias install-basic-centos2="sudo yum -y install otter-browser firefox gimp inkscape libreoffice"

#install-basicfor fedora (unrar rpmfusion)
alias install-basic-fedora="sudo dnf install -y glances mpd ncmpcpp terminus-fonts-console terminus-fonts ntfsprogs pulseaudio-utils p7zip p7zip-plugins arandr figlet tmux udisks2 vim neovim ntfs-3g fuse htop inxi mc screenfetch openssh sshfs alsa-utils composer youtube-dl unrar NetworkManager-tui mupdf ncmpcpp rtorrent srm fontawesome-fonts fontawesome-fonts-web icedtea-web ffmpeg HandBrake-{gui,cli} gstreamer{,1}-plugins-ugly gstreamer-plugins-bad-nonfree gstreamer1-plugins-bad-freeworld zlib.i686 ncurses-libs.i686 bzip2-libs.i686 postgresql-libs nodejs npm p7zip p7zip-plugins unrar mesa-dri-drivers mesa-libGL mariadb mariadb-server httpd php php-mysqlnd php-opcache phpmyadmin"

alias install-basic-fedora2="sudo dnf -y install otter-browser gimp inkscape libreoffice blueberry screenfetch firefox mscore-fonts powertop feh lxappearance fontawesome-fonts mesa-dri-drivers mesa-libGL steam audacity-freeworld gimp-paint-studio blender fontforge key-mon kdenlive simplescreenrecorder mypaint scribus synfigstudio obs-studio"

#install-webserver
alias install-webserver-fedora="sudo dnf -y install mariadb mariadb-server httpd php php-mysqlnd php-opcache phpmyadmin libreoffice-base mysql-connector-java unixODBC mysql-connector-java php-fpm"
alias install-webserver-centos="sudo yum -y install mariadb mariadb-server httpd php php-mysqlnd php-opcache phpmyadmin libreoffice-base mysql-connector-java unixODBC mysql-connector-java php-fpm"

#install-i3
alias install-i3-fedora="sudo dnf -y install mpv moc i3 i3status dmenu i3lock nitrogen mupdf w3m cmus lxappearance dejavu-sans-fonts dejavu-sans-mono-fonts dejavu-serif-fonts dejavu-fonts-common fontawesome-fonts fontawesome-fonts-web sddm py3status feh sddm mesa-dri-drivers xorg-x11-drv-evdev xorg-x11-drv-fbdev xorg-x11-drv-synaptics"

#xorg-x11-session xorg-x11-drv-vmouse x"
#"; sudo dnf -y groupinstall 'X window System' 'Desktop' 'Desktop Platform'"

alias install-i3-centos="sudo yum -y install mpv moc i3 i3status dmenu i3lock nitrogen mupdf w3m cmus lxappearance dejavu-sans-fonts dejavu-sans-mono-fonts dejavu-serif-fonts dejavu-fonts-common fontawesome-fonts fontawesome-fonts-web sddm py3status feh xorg-x11-session; sudo yum -y groupinstall 'X window System' 'Desktop' 'Desktop Platform'"

#install codec (with rpm fusion)
alias install-codec-fedora="sudo dnf -y install gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-good-extras gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld ffmpeg gstreamer-ffmpeg gstreamer1-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0"

alias install-codec-centos="sudo yum -y install gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-good-extras gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld ffmpeg gstreamer-ffmpeg gstreamer1-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0"

#unstall spin
alias install-spin-fedora="sudo dnf install spin-kickstarts spin-kickstarts l10n-kickstarts"
alias install-spin-centos="sudo yum install spin-kickstarts spin-kickstarts l10n-kickstarts"

#update grub
alias update-grub="sudo grub2-mkconfig -o /boot/grub2/grub.cfg"

#start GUI
alias gui="sudo systemctl isolate graphical.target"

#ssh connect
alias ssh-gema="ssh gemasp@202.148.24.10"
alias sshfs-gema="sshfs gemasp@202.148.24.10:/var/www/html/ ~/server/gemasp"
alias usshfs-gema="fusermount -u ~/server/gemasp"
#htop
alias ht="htop"

#wifi
alias nmscan="nmcli device wifi list"

#info
alias install-sf="sudo curl -o /usr/local/bin/screenfetch https://raw.githubusercontent.com/KittyKatt/screenFetch/master/screenfetch-dev && sudo chmod +x /usr/local/bin/screenfetch"
alias sf="screenfetch"
alias hn="hostnamectl"

#remove
alias del='shred -fzvun19'

#remove + sub directory
alias srm="srm -vrfE"
alias srms="srm -vrfs"

#testdisk
alias td="sudo testdisk"

#mc
alias smc="sudo mc"

#ranger
alias rg="ranger"
alias srg="sudo ranger"
#alias rg="~/.ranger/ranger.py"
#alias srg="sudo ~/.ranger/ranger.py"

alias ls='ls -la --color | grep "^d" && ls -la | grep "^-" && ls -la | grep "^l"'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#vim
alias vimbp="vim ~/.bash_profile"
alias vimbr="vim ~/.bashrc"
alias vimi3="vim ~/.i3/config"
alias vimi3bl="vim ~/.i3/i3blocks.conf"
alias vimi3st="vim ~/.i3/i3status.conf"
alias vimxr="vim ~/.Xresources"
alias vimgrub="sudo vim /etc/default/grub"
alias vimrc="vim ~/.vimrc"
alias vimzsh="vim ~/.zshrc"
alias vimmp="vim ~/mojopahit-linux/mojopahit-linux-testing.ks"

#hervy
alias vimpi="vim ~/Documents/impimedia"
alias hervy="vim ~/Documents/hervy"
alias cv="vim ~/Documents/cv"
alias vimhervy="vim ~/Documents/vimhervy"

#livecd-creator
alias mp-kde="cd /home/hervy/mojopahit-linux; ./mp-kde"
alias mp-xfce="cd /home/hervy/mojopahit-linux; ./mp-xfce"

#alias vi="vim"
alias python="python2"
#alias wget="wget -U 'noleak'"
#download dengan wget semua file penting
alias wg="wget -rcA pdf,7zip,zip,gz,xz,tar,rar,iso,mp3"
alias curl="curl --user-agent 'noleak'"

#cmatrix
alias cmr="cmatrix -b -C red -u 6"
alias cmb="cmatrix -b -C blue -u 6"
alias cmy="cmatrix -b -C yellow -u 6"
alias cmg="cmatrix -b -C green -u 6"
alias cmw="cmatrix -b -C white -u 6"

#lsblk
alias lsblkm="lsblk -o NAME,TYPE,SIZE,TRAN,VENDOR,MOUNTPOINT"

#youtube-dl
alias yt="youtube-dl -ci"

#youtube-dl playlist
alias ytp="youtube-dl -tAci"

#youtube-dl music only
alias ytm="youtube-dl -cif 251"

#webdev i=on x=stop o=restart
alias ihttpd="systemctl start httpd"
alias xhttpd="systemctl stop httpd"
alias ohttpd="systemctl restart httpd"
alias shttpd="systemctl status httpd"

alias imariadb="systemctl start mariadb"
alias xmariadb="systemctl stop mariadb"
alias omariadb="systemctl restart mariadb"
alias smariadb="systemctl status mariadb"

#laravel
alias ilara="php artisan serve"

#tmux
alias tm="tmux"
alias ta="tmux a"

#format 
alias ntfssdb="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdb'"
alias ntfssdc="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdc'"
alias ntfssdd="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdd'"
alias ntfssde="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sde'"
alias ntfssdf="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdf'"
alias ntfssdg="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdg'"
alias ntfssdh="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdh'"
alias ntfssdi="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdi'"

alias ntfssdb1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdb1'"
alias ntfssdb2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdb2'"
alias ntfssdb3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdb3'"
alias ntfssdb4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdb4'"

alias ntfssdc1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdc1'"
alias ntfssdc2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdc2'"
alias ntfssdc3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdc3'"
alias ntfssdc4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdc4'"

alias ntfssdd1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdd1'"
alias ntfssdd2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdd2'"
alias ntfssdd3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdd3'"
alias ntfssdd4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdd4'"

alias ntfssde1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sde1'"
alias ntfssde2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sde2'"
alias ntfssde3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sde3'"
alias ntfssde4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sde4'"

alias ntfssdf1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdf1'"
alias ntfssdf2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdf2'"
alias ntfssdf3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdf3'"
alias ntfssdf4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdf4'"

alias ntfssdg1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdg1'"
alias ntfssdg2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdg2'"
alias ntfssdg3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdg3'"
alias ntfssdg4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdg4'"

alias ntfssdh1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdh1'"
alias ntfssdh2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdh2'"
alias ntfssdh3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdh3'"
alias ntfssdh4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdh4'"

alias ntfssdi1="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdi1'"
alias ntfssdi2="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdi2'"
alias ntfssdi3="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdi3'"
alias ntfssdi4="sudo mkfs.ntfs -Q -F -L 'Disk' '/dev/sdi4'"

#ex ()
#{
#      if [ -f $1  ] ; then
#        case $1 in
#        *.tar.bz2)   tar xjf $1   ;;
#        *.tar.gz)    tar xzf $1   ;;
#        *.bz2)       bunzip2 $1   ;;
#        *.rar)       unrar x $1     ;;
#        *.gz)        gunzip $1    ;;
#        *.tar)       tar xf $1    ;;
#        *.tbz2)      tar xjf $1   ;;
#        *.tgz)       tar xzf $1   ;;
#        *.zip)       unzip $1     ;;
#        *.Z)         uncompress $1;;
#        *.7z)        7z x $1      ;;
#        *)           echo "'$1' cannot be extracted via ex()" ;;
#        esac
#    else
#    echo "'$1' is not a valid file"
#    fi
#
#}

#Pembukaan terminal, uncomment jika tidak perlu.
figlet -f slant "${red} W T F" 
echo "==============================================================="
echo -ne "${green} Today \t\t\t: ${red}"`date`;echo""
echo -e "${green} Kernel Information\t:${red}" `uname -smr`
echo -e "${green} Your Location\t\t:${red}" `pwd`
echo "==============================================================="
lsblk -o NAME,TYPE,GROUP,SIZE,VENDOR,MOUNTPOINT
echo "==============================================================="
nmcli d
echo "==============================================================="
#echo "--------------------------------------------------------"
nmcli device wifi list
echo "====================== W E L L C O M E ========================"
