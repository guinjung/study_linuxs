[guinjung@localhost ~]$ pwd
/home/guinjung
[guinjung@localhost ~]$ cd ~
[guinjung@localhost ~]$ pwd
/home/guinjung
[guinjung@localhost ~]$ cd /
[guinjung@localhost /]$ pwd
/
[guinjung@localhost /]$ cd ~
[guinjung@localhost ~]$ pwd
/home/guinjung
[guinjung@localhost ~]$ ls -altr
total 20
-rw-r--r--.  1 guinjung guinjung  492 Apr 30  2024 .bashrc
-rw-r--r--.  1 guinjung guinjung  141 Apr 30  2024 .bash_profile
-rw-r--r--.  1 guinjung guinjung   18 Apr 30  2024 .bash_logout
drwxr-xr-x.  4 guinjung guinjung   39 Jul 16 10:12 .mozilla
drwxr-xr-x.  3 root     root       22 Jul 16 10:54 ..
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Videos
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Templates
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Public
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Pictures
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Music
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Downloads
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Documents
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Desktop
drwx------. 14 guinjung guinjung 4096 Jul 16 10:54 .
drwx------.  4 guinjung guinjung   32 Jul 16 10:54 .local
drwxr-xr-x.  8 guinjung guinjung 4096 Jul 16 10:55 .config
drwx------.  7 guinjung guinjung  179 Jul 16 10:55 .cache
[guinjung@localhost ~]$ ls -alt
total 20
drwx------.  7 guinjung guinjung  179 Jul 16 10:55 .cache
drwxr-xr-x.  8 guinjung guinjung 4096 Jul 16 10:55 .config
drwx------.  4 guinjung guinjung   32 Jul 16 10:54 .local
drwx------. 14 guinjung guinjung 4096 Jul 16 10:54 .
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Desktop
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Documents
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Downloads
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Music
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Pictures
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Public
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Templates
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 10:54 Videos
drwxr-xr-x.  3 root     root       22 Jul 16 10:54 ..
drwxr-xr-x.  4 guinjung guinjung   39 Jul 16 10:12 .mozilla
-rw-r--r--.  1 guinjung guinjung   18 Apr 30  2024 .bash_logout
-rw-r--r--.  1 guinjung guinjung  141 Apr 30  2024 .bash_profile
-rw-r--r--.  1 guinjung guinjung  492 Apr 30  2024 .bashrc
[guinjung@localhost ~]$ 
[guinjung@localhost ~]$ ls -l /etc
total 1308
drwxr-xr-x.  3 root root        28 Jul 16 10:12 accountsservice
-rw-r--r--.  1 root root        16 Jul 16 10:18 adjtime
-rw-r--r--.  1 root root      1529 Jun 23  2020 aliases
drwxr-xr-x.  3 root root        65 Jul 16 10:15 alsa
drwxr-xr-x.  2 root root      4096 Jul 16 10:15 alternatives
-rw-r--r--.  1 root root       541 May  2 18:15 anacrontab
-rw-r--r--.  1 root root       833 Feb 11  2023 appstream.conf
-rw-r--r--.  1 root root        55 May  3 04:25 asound.conf
-rw-r--r--.  1 root root         1 Oct 26  2022 at.deny
drwxr-x---.  4 root root       100 Jul 16 10:14 audit
drwxr-xr-x.  3 root root      4096 Jul 16 10:18 authselect
drwxr-xr-x.  4 root root        71 Jul 16 10:12 avahi
drwxr-xr-x.  2 root root       124 Jul 16 10:15 bash_completion.d
-rw-r--r--.  1 root root      2658 Apr  8  2024 bashrc
-rw-r--r--.  1 root root       535 Nov  5  2024 bindresvport.blacklist
drwxr-xr-x.  2 root root         6 Apr 24 15:27 binfmt.d
dr-xr-xr-x.  2 root root        23 Jul 16 10:12 bluetooth
-rw-r-----.  1 root brlapi      33 Jul 16 10:14 brlapi.key
drwxr-xr-x.  7 root root        84 Jul 16 10:14 brltty
-rw-r--r--.  1 root root     28974 May 26  2022 brltty.conf
drwxr-xr-x.  3 root root        36 Jul 16 10:14 chromium
-rw-r--r--.  1 root root      1370 Apr 27 19:59 chrony.conf
-rw-r-----.  1 root chrony     540 Apr 27 19:59 chrony.keys
drwxr-xr-x.  2 root root        26 Jul 16 10:13 cifs-utils
drwxr-xr-x.  4 root root        66 Jul 16 10:14 cockpit
drwxr-xr-x.  7 root root       154 Jul 16 10:13 containers
drwxr-xr-x.  2 root root        21 Jul 16 10:12 cron.d
drwxr-xr-x.  2 root root         6 May 11  2022 cron.daily
-rw-r--r--.  1 root root         0 May  2 18:15 cron.deny
drwxr-xr-x.  2 root root        22 Jul 16 10:12 cron.hourly
drwxr-xr-x.  2 root root         6 May 11  2022 cron.monthly
-rw-r--r--.  1 root root       451 May 11  2022 crontab
drwxr-xr-x.  2 root root         6 May 11  2022 cron.weekly
drwxr-xr-x.  6 root root        81 Jul 16 10:12 crypto-policies
-rw-------.  1 root root         0 Jul 16 10:11 crypttab
-rw-r--r--.  1 root root      1401 Apr  8  2024 csh.cshrc
-rw-r--r--.  1 root root      1112 Apr  8  2024 csh.login
drwxr-xr-x.  4 root lp        4096 Jul 16 10:55 cups
drwxr-xr-x.  2 root root        34 Jul 16 10:14 cupshelpers
drwxr-xr-x.  4 root root        78 Jul 16 10:12 dbus-1
drwxr-xr-x.  4 root root        31 Jul 16 10:12 dconf
drwxr-xr-x.  2 root root        52 Jul 16 10:13 debuginfod
drwxr-xr-x.  2 root root        33 Jul 16 10:18 default
drwxr-xr-x.  2 root root        40 Jul 16 10:13 depmod.d
drwxr-xr-x.  3 root root        24 Jul 16 10:15 dhcp
-rw-r--r--.  1 root root      4673 May  2 17:29 DIR_COLORS
-rw-r--r--.  1 root root      4755 May  2 17:29 DIR_COLORS.lightbgcolor
drwxr-xr-x.  8 root root       128 Jul 16 10:12 dnf
-rw-r--r--.  1 root dnsmasq  27839 Apr 24  2024 dnsmasq.conf
drwxr-xr-x.  2 root dnsmasq      6 Apr 24  2024 dnsmasq.d
-rw-r--r--.  1 root root       117 Apr 24 17:42 dracut.conf
drwxr-xr-x.  2 root root         6 Apr 24 17:42 dracut.conf.d
drwxr-xr-x.  3 root root        37 Jul 16 10:12 egl
-rw-r--r--.  1 root root      4760 May 16  2022 enscript.cfg
-rw-r--r--.  1 root root         0 Apr  8  2024 environment
-rw-r--r--.  1 root root      1362 Jun 23  2020 ethertypes
-rw-r--r--.  1 root root         0 Jun 23  2020 exports
lrwxrwxrwx.  1 root root        56 May 17 11:49 favicon.png -> /usr/share/icons/hicolor/16x16/apps/fedora-logo-icon.png
-rw-r--r--.  1 root root        66 Jun 23  2020 filesystems
drwxr-xr-x.  3 root root        18 Jul 16 10:15 firefox
drwxr-x---.  8 root root       149 Jul 16 10:14 firewalld
drwxr-xr-x.  3 root root        23 Jul 16 10:14 flatpak
drwxr-xr-x.  3 root root        38 Jul 16 10:12 fonts
drwxr-xr-x.  2 root root        28 Jul 16 10:14 foomatic
-rw-r--r--.  1 root root        20 Aug 20  2021 fprintd.conf
-rw-r--r--.  1 root root       579 Jul 16 10:11 fstab
-rw-r--r--.  1 root root        38 Nov  5  2024 fuse.conf
drwxr-xr-x.  4 root root        64 Jul 16 10:14 fwupd
drwxr-xr-x.  2 root root         6 Nov  6  2024 gcrypt
drwxr-xr-x.  6 root root       107 Jul 16 10:14 gdm
drwxr-xr-x.  2 root root        26 Jul 16 10:13 geoclue
drwxr-xr-x.  3 root root        26 Jul 16 10:12 glvnd
drwxr-xr-x.  2 root root         6 Oct 28  2023 gnupg
-rw-r--r--.  1 root root        94 May 16  2022 GREP_COLORS
drwxr-xr-x.  4 root root        40 Jul 16 10:12 groff
-rw-r--r--.  1 root root       760 Jul 16 10:54 group
-rw-r--r--.  1 root root       735 Jul 16 10:15 group-
lrwxrwxrwx.  1 root root        22 May 16 04:15 grub2.cfg -> ../boot/grub2/grub.cfg
drwx------.  2 root root      4096 Jul 16 10:18 grub.d
----------.  1 root root       608 Jul 16 10:54 gshadow
----------.  1 root root       587 Jul 16 10:15 gshadow-
drwxr-xr-x.  3 root root        20 Jul 16 10:13 gss
-rw-r--r--.  1 root root         9 Jun 23  2020 host.conf
-rw-r--r--.  1 root root         1 Jul 16 10:19 hostname
-rw-r--r--.  1 root root       158 Jun 23  2020 hosts
drwxr-xr-x.  2 root root        24 Jul 16 10:12 hp
-rw-r--r--.  1 root root       490 Apr 24 15:27 inittab
-rw-r--r--.  1 root root       943 Jun 23  2020 inputrc
drwxr-xr-x.  2 root root        25 Jul 16 10:12 iscsi
-rw-r--r--.  1 root root        20 May 17 12:08 issue
drwxr-xr-x.  2 root root        27 Jul 16 10:14 issue.d
-rw-r--r--.  1 root root        19 May 17 12:08 issue.net
drwxr-xr-x.  4 root root        33 Jul 16 10:13 kdump
-rw-r--r--.  1 root root      8979 Jul 16 10:13 kdump.conf
drwxr-xr-x.  3 root root        38 Jul 16 10:18 kernel
drwxr-xr-x.  3 root root        17 Jul 16 10:13 keys
drwxr-xr-x.  2 root root         6 Apr 18  2023 keyutils
-rw-r--r--.  1 root root       880 Apr 29 04:29 krb5.conf
drwxr-xr-x.  2 root root        83 Jul 16 10:15 krb5.conf.d
-rw-r--r--.  1 root root     39631 Jul 16 10:53 ld.so.cache
-rw-r--r--.  1 root root        28 May 14 02:39 ld.so.conf
drwxr-xr-x.  2 root root        39 Jul 16 10:15 ld.so.conf.d
-rw-r-----.  1 root root       191 May  4 13:57 libaudit.conf
drwxr-xr-x.  3 root root        20 Jul 16 10:12 libblockdev
drwxr-xr-x.  2 root root      4096 Jul 16 10:12 libibverbs.d
drwxr-xr-x.  2 root root        35 Jul 16 10:12 libnl
drwxr-xr-x.  2 root root         6 May 26  2022 libpaper.d
drwxr-xr-x.  6 root root        70 Jul 16 10:12 libreport
drwxr-xr-x.  2 root root        62 Jul 16 10:12 libssh
-rw-r--r--.  1 root root      2391 Mar  1  2021 libuser.conf
-rw-r--r--.  1 root root        19 Jul 16 10:19 locale.conf
lrwxrwxrwx.  1 root root        32 Jul 16 10:18 localtime -> ../usr/share/zoneinfo/Asia/Seoul
-rw-r--r--.  1 root root      7779 Apr 27 11:46 login.defs
-rw-r--r--.  1 root root       496 Jun  7  2020 logrotate.conf
drwxr-xr-x.  2 root root      4096 Jul 16 10:15 logrotate.d
drwxr-xr-x.  3 root root        43 Jul 16 10:14 lsm
drwxr-xr-x.  7 root root       115 Jul 16 10:12 lvm
-r--r--r--.  1 root root        33 Jul 16 10:12 machine-id
-rw-r--r--.  1 root root       111 Apr 16  2024 magic
-rw-r--r--.  1 root root       272 Apr 22  2020 mailcap
-rw-r--r--.  1 root root      5122 Apr 25 11:50 makedumpfile.conf.sample
-rw-r--r--.  1 root root      5235 Apr 15  2023 man_db.conf
drwxr-xr-x.  3 root root        41 Jul 16 10:15 mcelog
drwxr-xr-x.  3 root root        32 Jul 16 10:15 microcode_ctl
-rw-r--r--.  1 root root     67454 Apr 22  2020 mime.types
-rw-r--r--.  1 root root      1208 May  4 07:21 mke2fs.conf
drwxr-xr-x.  2 root root        54 Jul 16 10:14 modprobe.d
drwxr-xr-x.  2 root root         6 Apr 24 15:27 modules-load.d
-rw-r--r--.  1 root root         0 Jun 23  2020 motd
drwxr-xr-x.  2 root root        21 Jul 16 10:14 motd.d
lrwxrwxrwx.  1 root root        19 Jul 16 10:12 mtab -> ../proc/self/mounts
drwxr-xr-x.  2 root root         6 May  3 16:11 multipath
-rw-r--r--.  1 root root     10373 May  2 18:10 nanorc
-rw-r--r--.  1 root root       767 Nov  5  2024 netconfig
drwxr-xr-x.  7 root root       134 Jul 16 10:13 NetworkManager
-rw-r--r--.  1 root root        58 Jun 23  2020 networks
drwx------.  3 root root        66 Jul 16 10:12 nftables
lrwxrwxrwx.  1 root root        29 Jul 16 10:18 nsswitch.conf -> /etc/authselect/nsswitch.conf
-rw-r--r--.  1 root root      2108 May 14 02:41 nsswitch.conf.bak
drwxr-xr-x.  2 root root        57 Jul 16 10:15 nvme
drwxr-xr-x.  3 root root        36 Jul 16 10:13 openldap
drwxr-xr-x.  3 root root        20 Jul 16 10:14 opt
lrwxrwxrwx.  1 root root        21 May 17 12:08 os-release -> ../usr/lib/os-release
drwxr-xr-x.  3 root root        23 Jul 16 10:13 ostree
drwxr-xr-x.  2 root root        76 Jul 16 10:15 PackageKit
drwxr-xr-x.  2 root root      4096 Jul 16 10:18 pam.d
-rw-r--r--.  1 root root        68 May 26  2022 papersize
-rw-r--r--.  1 root root      1902 Jul 16 10:54 passwd
-rw-r--r--.  1 root root      1902 Jul 16 10:54 passwd-
-rw-r--r--.  1 root root      1362 May 15  2022 pbm2ppa.conf
-rw-r--r--.  1 root root      2872 May 18  2022 pinforc
drwxr-xr-x.  3 root root        21 Jul 16 10:12 pkcs11
drwxr-xr-x.  3 root root        27 Jul 16 10:12 pkgconfig
drwxr-xr-x. 10 root root       123 Jul 16 10:14 pki
drwxr-xr-x.  2 root root        28 Jul 16 10:13 plymouth
drwxr-xr-x.  5 root root        52 Jul 16 10:12 pm
-rw-r--r--.  1 root root      6300 May 15  2022 pnm2ppa.conf
drwxr-xr-x.  5 root root        72 Jul 16 10:12 polkit-1
drwxr-xr-x.  2 root root         6 May 16  2022 popt.d
-rw-r--r--.  1 root root       233 Jun 23  2020 printcap
-rw-r--r--.  1 root root      1899 Apr  8  2024 profile
drwxr-xr-x.  2 root root      4096 Jul 16 10:15 profile.d
-rw-r--r--.  1 root root      6568 Jun 23  2020 protocols
drwxr-xr-x.  2 root root        25 Jul 16 10:13 pulse
drwxr-xr-x.  3 root root        50 Jul 16 10:15 qemu-ga
drwxr-xr-x.  3 root root        27 Jul 16 10:15 ras
drwxr-xr-x.  3 root root        36 Jul 16 10:12 rc.d
lrwxrwxrwx.  1 root root        13 Apr 24 15:27 rc.local -> rc.d/rc.local
lrwxrwxrwx.  1 root root        13 May 17 12:08 redhat-release -> rocky-release
-rw-r--r--.  1 root root      1787 Apr 18  2023 request-key.conf
drwxr-xr-x.  2 root root         6 Apr 18  2023 request-key.d
-rw-r--r--.  1 root root        74 Jul 16 10:53 resolv.conf
-rw-r--r--.  1 root root        36 May 17 12:08 rocky-release
-rw-r--r--.  1 root root        42 May 17 12:08 rocky-release-upstream
-rw-r--r--.  1 root root      1634 Aug  2  2021 rpc
drwxr-xr-x.  2 root root         6 Apr 22 13:30 rpm
-rw-r--r--.  1 root root       458 May  4 11:05 rsyncd.conf
-rw-r--r--.  1 root root      3380 May  3 03:55 rsyslog.conf
drwxr-xr-x.  2 root root         6 May  3 03:58 rsyslog.d
drwxr-xr-x.  2 root root        35 Jul 16 10:13 rwtab.d
drwxr-xr-x.  2 root root        61 Jul 16 10:12 samba
drwxr-xr-x.  3 root root      4096 Jul 16 10:13 sane.d
drwxr-xr-x.  2 root root         6 Apr 15  2023 sasl2
drwxr-xr-x.  7 root root      4096 Jul 16 10:12 security
drwxr-xr-x.  3 root root        57 Jul 16 10:13 selinux
-rw-r--r--.  1 root root    692252 Jun 23  2020 services
-rw-r--r--.  1 root root       216 Apr  8  2024 sestatus.conf
drwxr-xr-x.  2 root root        33 Jul 16 10:14 setroubleshoot
drwxr-xr-x.  3 root root        21 Jul 16 10:12 sgml
----------.  1 root root      1053 Jul 16 10:54 shadow
----------.  1 root root       949 Jul 16 10:54 shadow-
-rw-r--r--.  1 root root        44 Jun 23  2020 shells
drwxr-xr-x.  3 root root        78 Jul 16 10:12 skel
drwxr-xr-x.  3 root root        74 Jul 16 10:15 smartmontools
drwxr-xr-x.  6 root root        86 Jul 16 10:14 sos
drwxr-xr-x.  4 root root        56 Jul 16 10:13 speech-dispatcher
drwxr-xr-x.  4 root root      4096 Jul 16 10:53 ssh
drwxr-xr-x.  2 root root        77 Jul 16 10:12 ssl
drwx------.  4 sssd sssd        31 Jul 16 10:13 sssd
drwxr-xr-x.  2 root root         6 Nov  3  2024 statetab.d
-rw-r--r--.  1 root root        22 Jul 16 10:54 subgid
-rw-r--r--.  1 root root         0 Jun 23  2020 subgid-
-rw-r--r--.  1 root root        22 Jul 16 10:54 subuid
-rw-r--r--.  1 root root         0 Jun 23  2020 subuid-
-rw-r-----.  1 root root      3983 Feb 15  2024 sudo.conf
-r--r-----.  1 root root      4328 Feb 15  2024 sudoers
drwxr-x---.  2 root root         6 Feb 15  2024 sudoers.d
-rw-r-----.  1 root root      3181 Feb 15  2024 sudo-ldap.conf
drwxr-xr-x.  3 root root      4096 Jul 16 10:19 sysconfig
-rw-r--r--.  1 root root       449 Apr 24 15:27 sysctl.conf
drwxr-xr-x.  2 root root        28 Jul 16 10:13 sysctl.d
drwxr-xr-x.  4 root root       166 Jul 16 10:13 systemd
lrwxrwxrwx.  1 root root        13 May 17 12:08 system-release -> rocky-release
-rw-r--r--.  1 root root        29 May 17 12:08 system-release-cpe
drwxr-xr-x.  2 root root         6 Nov  6  2023 terminfo
drwxr-xr-x.  2 root root        22 Jul 16 10:14 tmpfiles.d
drwxr-xr-x.  3 root root        51 Jul 16 10:13 tpm2-tss
-rw-r--r--.  1 root root       375 Apr 24 15:49 trusted-key.key
drwxr-xr-x.  3 root root       176 Jul 16 10:14 tuned
drwxr-xr-x.  4 root root        68 Jul 16 10:53 udev
drwxr-xr-x.  2 root root        60 Jul 16 10:14 udisks2
-rw-r--r--.  1 root root       624 May 16  2022 updatedb.conf
drwxr-xr-x.  2 root root        25 Jul 16 10:13 UPower
-rw-r--r--.  1 root root      1523 May 16  2022 usb_modeswitch.conf
-rw-r--r--.  1 root root        28 Jul 16 10:19 vconsole.conf
-rw-r--r--.  1 root root      4017 May 14 03:11 vimrc
-rw-r--r--.  1 root root      1184 May 14 03:11 virc
drwxr-xr-x.  4 root root      4096 Jul 16 10:13 vmware-tools
drwxr-xr-x.  5 root root        67 Jul 16 10:12 vulkan
-rw-r--r--.  1 root root      4925 Sep  4  2024 wgetrc
drwxr-xr-x.  6 root root        81 Jul 16 10:13 wireplumber
drwxr-xr-x.  2 root root        33 Jul 16 10:12 wpa_supplicant
drwxr-xr-x.  7 root root       121 Jul 16 10:14 X11
-rw-r--r--.  1 root root       817 May 26  2022 xattr.conf
drwxr-xr-x.  6 root root       125 Jul 16 10:12 xdg
drwxr-xr-x.  3 root root        36 Jul 16 10:12 xml
drwxr-xr-x.  2 root root        57 Jul 16 10:15 yum
lrwxrwxrwx.  1 root root        12 May  4 12:12 yum.conf -> dnf/dnf.conf
drwxr-xr-x.  2 root root        98 Jul 16 10:12 yum.repos.d
[guinjung@localhost ~]$ 
[guinjung@localhost ~]$ mkdir practice
[guinjung@localhost ~]$ 
[guinjung@localhost ~]$ mkdir -p practice/documents/reports/ls
[guinjung@localhost ~]$ mkdir -p practice/documents/notes
[guinjung@localhost ~]$ cd practice
[guinjung@localhost practice]$ mkdir images backup
[guinjung@localhost practice]$ ls -altr
total 4
drwx------. 15 guinjung guinjung 4096 Jul 16 10:59 ..
drwxr-xr-x.  4 guinjung guinjung   34 Jul 16 11:00 documents
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 11:00 images
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 11:00 backup
drwxr-xr-x.  5 guinjung guinjung   51 Jul 16 11:00 .
[guinjung@localhost practice]$ cd d*
[guinjung@localhost documents]$ ls -altr
total 0
drwxr-xr-x. 3 guinjung guinjung 16 Jul 16 11:00 reports
drwxr-xr-x. 2 guinjung guinjung  6 Jul 16 11:00 notes
drwxr-xr-x. 4 guinjung guinjung 34 Jul 16 11:00 .
drwxr-xr-x. 5 guinjung guinjung 51 Jul 16 11:00 ..
[guinjung@localhost documents]$ cd reports
[guinjung@localhost reports]$ ls
ls
[guinjung@localhost reports]$ cd ../../
[guinjung@localhost practice]$ tree
.
├── backup
├── documents
│   ├── notes
│   └── reports
│       └── ls
└── images

6 directories, 0 files
[guinjung@localhost practice]$ cd docu*
[guinjung@localhost documents]$ echo "Hello Linux!" > readme.txt
[guinjung@localhost documents]$ ls -altr
total 4
drwxr-xr-x. 3 guinjung guinjung 16 Jul 16 11:00 reports
drwxr-xr-x. 2 guinjung guinjung  6 Jul 16 11:00 notes
drwxr-xr-x. 5 guinjung guinjung 51 Jul 16 11:00 ..
-rw-r--r--. 1 guinjung guinjung 13 Jul 16 11:02 readme.txt
drwxr-xr-x. 4 guinjung guinjung 52 Jul 16 11:02 .
[guinjung@localhost documents]$ cat read*
Hello Linux!
[guinjung@localhost documents]$ cd ../notes
bash: cd: ../notes: No such file or directory
[guinjung@localhost documents]$ cd ..
[guinjung@localhost practice]$ ls
backup  documents  images
[guinjung@localhost practice]$ mkdir notes
[guinjung@localhost practice]$ cd notes
[guinjung@localhost notes]$ echo "명령어 연습 중" > memo.txt
[guinjung@localhost notes]$ cat memo.txt
명령어 연습 중
[guinjung@localhost notes]$ cat ../do*/readme.txt
Hello Linux!
[guinjung@localhost notes]$ cd ..
[guinjung@localhost practice]$ ls
backup  documents  images  notes
[guinjung@localhost practice]$ 
[guinjung@localhost practice]$ 
[guinjung@localhost practice]$ cd do*
[guinjung@localhost documents]$ ls
notes  readme.txt  reports
[guinjung@localhost documents]$ 
[guinjung@localhost documents]$ 
[guinjung@localhost documents]$ cp readme.txt ../backup/
[guinjung@localhost documents]$ cp ./* ../backup/
cp: -r not specified; omitting directory './notes'
cp: -r not specified; omitting directory './reports'
[guinjung@localhost documents]$ cp -r ./* ../backup/
[guinjung@localhost documents]$ ls
notes  readme.txt  reports
[guinjung@localhost documents]$ cd ..
[guinjung@localhost practice]$ ls
backup  documents  images  notes
[guinjung@localhost practice]$ 
[guinjung@localhost practice]$ 
[guinjung@localhost practice]$ cd notes
[guinjung@localhost notes]$ ls
memo.txt
[guinjung@localhost notes]$ 
[guinjung@localhost notes]$ 
[guinjung@localhost notes]$ mv memo.txt ../docu*/
[guinjung@localhost notes]$ 
[guinjung@localhost notes]$ cd ..
[guinjung@localhost practice]$ ls
backup  documents  images  notes
[guinjung@localhost practice]$ mv images media
[guinjung@localhost practice]$ ls -altr
total 4
drwx------. 15 guinjung guinjung 4096 Jul 16 10:59 ..
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 11:00 media
drwxr-xr-x.  4 guinjung guinjung   52 Jul 16 11:05 backup
drwxr-xr-x.  2 guinjung guinjung    6 Jul 16 11:06 notes
drwxr-xr-x.  4 guinjung guinjung   68 Jul 16 11:06 documents
drwxr-xr-x.  6 guinjung guinjung   63 Jul 16 11:06 .
[guinjung@localhost practice]$ 
[guinjung@localhost practice]$ cd do*
[guinjung@localhost documents]$ ls
memo.txt  notes  readme.txt  reports
[guinjung@localhost documents]$ mv readme.txt introduction.txt
[guinjung@localhost documents]$ mv memo.txt study_notes.txt
[guinjung@localhost documents]$ 
[guinjung@localhost documents]$ 
[guinjung@localhost documents]$ 
[guinjung@localhost documents]$ mkdir -p /my_project/src
mkdir: cannot create directory ‘/my_project’: Permission denied
[guinjung@localhost documents]$ cd /
[guinjung@localhost /]$ pwd
/
[guinjung@localhost /]$ mkdir my_project
mkdir: cannot create directory ‘my_project’: Permission denied
[guinjung@localhost /]$ sudo mkdir -p /my_project/src

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for guinjung: 
[guinjung@localhost /]$ ls -altr
total 24
drwxr-xr-x.   2 root root    6 Nov  3  2024 srv
lrwxrwxrwx.   1 root root    8 Nov  3  2024 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 Nov  3  2024 opt
drwxr-xr-x.   2 root root    6 Nov  3  2024 media
lrwxrwxrwx.   1 root root    9 Nov  3  2024 lib64 -> usr/lib64
lrwxrwxrwx.   1 root root    7 Nov  3  2024 lib -> usr/lib
lrwxrwxrwx.   1 root root    7 Nov  3  2024 bin -> usr/bin
dr-xr-xr-x.   2 root root    6 Nov  3  2024 afs
drwxr-xr-x.  12 root root  144 Jul 16 10:12 usr
drwxr-xr-x.   3 root root   18 Jul 16 10:13 mnt
dr-xr-xr-x. 311 root root    0 Jul 16 10:53 proc
dr-xr-xr-x.  13 root root    0 Jul 16 10:53 sys
drwxr-xr-x.  20 root root 4096 Jul 16 10:53 var
dr-xr-x---.   4 root root  140 Jul 16 10:53 root
dr-xr-xr-x.   5 root root 4096 Jul 16 10:54 boot
drwxr-xr-x.   3 root root   22 Jul 16 10:54 home
drwxr-xr-x. 131 root root 8192 Jul 16 10:54 etc
drwxr-xr-x.  20 root root 3420 Jul 16 10:55 dev
drwxr-xr-x.  47 root root 1240 Jul 16 10:57 run
drwxrwxrwt.  20 root root 4096 Jul 16 11:08 tmp
dr-xr-xr-x.  19 root root  253 Jul 16 11:08 ..
dr-xr-xr-x.  19 root root  253 Jul 16 11:08 .
drwxr-xr-x.   3 root root   17 Jul 16 11:08 my_project
[guinjung@localhost /]$ cd my_project
[guinjung@localhost my_project]$ mkdir src docs tests config
mkdir: cannot create directory ‘src’: File exists
mkdir: cannot create directory ‘docs’: Permission denied
mkdir: cannot create directory ‘tests’: Permission denied
mkdir: cannot create directory ‘config’: Permission denied
[guinjung@localhost my_project]$ sudo -i
[root@localhost ~]# cd /my_project
[root@localhost my_project]# ls -altr
total 0
dr-xr-xr-x. 19 root root 253 Jul 16 11:08 ..
drwxr-xr-x.  2 root root   6 Jul 16 11:08 src
drwxr-xr-x.  3 root root  17 Jul 16 11:08 .
[root@localhost my_project]# 
[root@localhost my_project]# mkdir docs tests config
[root@localhost my_project]# cd src
[root@localhost src]# touch main.py
[root@localhost src]# cd ../docs
[root@localhost docs]# echo "#My Project Documentation" > README.md
[root@localhost docs]# cd ../config
[root@localhost config]# echo "# Configuration File" > settings.conf
[root@localhost config]# cd ../src
[root@localhost src]# ls
main.py
[root@localhost src]# vi main.py
[root@localhost src]# ls -altr
total 4
drwxr-xr-x. 6 root root 56 Jul 16 11:09 ..
-rw-r--r--. 1 root root 19 Jul 16 11:12 main.py
drwxr-xr-x. 2 root root 21 Jul 16 11:12 .
[root@localhost src]# cd ..
[root@localhost my_project]# tree
.
├── config
│   └── settings.conf
├── docs
│   └── README.md
├── src
│   └── main.py
└── tests

4 directories, 3 files
[root@localhost my_project]# cd ..
[root@localhost /]# ls -altr
total 24
drwxr-xr-x.   2 root root    6 Nov  3  2024 srv
lrwxrwxrwx.   1 root root    8 Nov  3  2024 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 Nov  3  2024 opt
drwxr-xr-x.   2 root root    6 Nov  3  2024 media
lrwxrwxrwx.   1 root root    9 Nov  3  2024 lib64 -> usr/lib64
lrwxrwxrwx.   1 root root    7 Nov  3  2024 lib -> usr/lib
lrwxrwxrwx.   1 root root    7 Nov  3  2024 bin -> usr/bin
dr-xr-xr-x.   2 root root    6 Nov  3  2024 afs
drwxr-xr-x.  12 root root  144 Jul 16 10:12 usr
drwxr-xr-x.   3 root root   18 Jul 16 10:13 mnt
dr-xr-xr-x. 313 root root    0 Jul 16 10:53 proc
dr-xr-xr-x.  13 root root    0 Jul 16 10:53 sys
drwxr-xr-x.  20 root root 4096 Jul 16 10:53 var
dr-xr-xr-x.   5 root root 4096 Jul 16 10:54 boot
drwxr-xr-x.   3 root root   22 Jul 16 10:54 home
drwxr-xr-x. 131 root root 8192 Jul 16 10:54 etc
drwxr-xr-x.  20 root root 3420 Jul 16 10:55 dev
drwxr-xr-x.  47 root root 1240 Jul 16 10:57 run
dr-xr-xr-x.  19 root root  253 Jul 16 11:08 ..
dr-xr-xr-x.  19 root root  253 Jul 16 11:08 .
drwxr-xr-x.   6 root root   56 Jul 16 11:09 my_project
drwxrwxrwt.  19 root root 4096 Jul 16 11:09 tmp
dr-xr-x---.   4 root root  156 Jul 16 11:12 root
[root@localhost /]# 
[root@localhost /]# 
[root@localhost /]# cp -r my_project my_project_backup
[root@localhost /]# ls -altr
total 24
drwxr-xr-x.   2 root root    6 Nov  3  2024 srv
lrwxrwxrwx.   1 root root    8 Nov  3  2024 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 Nov  3  2024 opt
drwxr-xr-x.   2 root root    6 Nov  3  2024 media
lrwxrwxrwx.   1 root root    9 Nov  3  2024 lib64 -> usr/lib64
lrwxrwxrwx.   1 root root    7 Nov  3  2024 lib -> usr/lib
lrwxrwxrwx.   1 root root    7 Nov  3  2024 bin -> usr/bin
dr-xr-xr-x.   2 root root    6 Nov  3  2024 afs
drwxr-xr-x.  12 root root  144 Jul 16 10:12 usr
drwxr-xr-x.   3 root root   18 Jul 16 10:13 mnt
dr-xr-xr-x. 313 root root    0 Jul 16 10:53 proc
dr-xr-xr-x.  13 root root    0 Jul 16 10:53 sys
drwxr-xr-x.  20 root root 4096 Jul 16 10:53 var
dr-xr-xr-x.   5 root root 4096 Jul 16 10:54 boot
drwxr-xr-x.   3 root root   22 Jul 16 10:54 home
drwxr-xr-x. 131 root root 8192 Jul 16 10:54 etc
drwxr-xr-x.  20 root root 3420 Jul 16 10:55 dev
drwxr-xr-x.  47 root root 1240 Jul 16 10:57 run
drwxr-xr-x.   6 root root   56 Jul 16 11:09 my_project
drwxrwxrwt.  19 root root 4096 Jul 16 11:09 tmp
dr-xr-x---.   4 root root  156 Jul 16 11:12 root
drwxr-xr-x.   6 root root   56 Jul 16 11:12 my_project_backup
dr-xr-xr-x.  20 root root  278 Jul 16 11:12 ..
dr-xr-xr-x.  20 root root  278 Jul 16 11:12 .
[root@localhost /]# mv ./my_project_backup/src/main.py ./my_project_backup/src/app.py
[root@localhost /]# mv ./my_project_backup/docs/README.md /my_project/
