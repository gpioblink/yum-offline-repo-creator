# yum-offline-repo-creator

You can make offline repository for yum easily.
Please make use of this for on-premise environment and security sandbox.

I referenced [this grate blog](https://blog.amedama.jp/entry/2015/08/31/203556) to make this script. 

## How to use

Just run `./create.sh <docker image names>`.

## Example

For example, I will run `./create.sh centos:7 centos:6 amazonlinux`.

After you launched, you will see these files.

```
[gpioblink@gpiobook repo]$ tree
.
├── amazonlinux
│   ├── repo_amazonlinux
│   │   ├── acl-2.2.51-14.amzn2.x86_64.rpm
│   │   ├── audit-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── audit-libs-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── cracklib-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cracklib-dicts-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cryptsetup-libs-1.7.4-4.amzn2.x86_64.rpm
│   │   ├── dbus-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── dbus-libs-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── device-mapper-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── device-mapper-libs-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── elfutils-default-yama-scope-0.176-2.amzn2.noarch.rpm
│   │   ├── elfutils-libelf-0.176-2.amzn2.x86_64.rpm
│   │   ├── elfutils-libs-0.176-2.amzn2.x86_64.rpm
│   │   ├── emacs-filesystem-25.3-3.amzn2.0.1.noarch.rpm
│   │   ├── fipscheck-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── fipscheck-lib-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── git-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-doc-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── gpm-libs-1.20.7-15.amzn2.0.2.x86_64.rpm
│   │   ├── groff-base-1.22.2-8.amzn2.0.2.x86_64.rpm
│   │   ├── gzip-1.5-10.amzn2.x86_64.rpm
│   │   ├── kmod-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── kmod-libs-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── less-458-9.amzn2.0.2.x86_64.rpm
│   │   ├── libcap-ng-0.7.5-4.amzn2.0.4.x86_64.rpm
│   │   ├── libedit-3.0-12.20121213cvs.amzn2.0.2.x86_64.rpm
│   │   ├── libfdisk-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libpcap-1.5.3-11.amzn2.x86_64.rpm
│   │   ├── libpwquality-1.2.3-5.amzn2.x86_64.rpm
│   │   ├── libsecret-0.18.5-2.amzn2.0.2.x86_64.rpm
│   │   ├── libsemanage-2.5-11.amzn2.x86_64.rpm
│   │   ├── libsmartcols-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libutempter-1.1.6-4.amzn2.0.2.x86_64.rpm
│   │   ├── lz4-1.7.5-2.amzn2.0.1.x86_64.rpm
│   │   ├── nano-2.9.8-2.amzn2.0.1.x86_64.rpm
│   │   ├── nmap-6.40-13.amzn2.x86_64.rpm
│   │   ├── nmap-ncat-6.40-13.amzn2.x86_64.rpm
│   │   ├── openssh-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── openssh-clients-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── pam-1.1.8-22.amzn2.x86_64.rpm
│   │   ├── pcre2-10.23-2.amzn2.0.2.x86_64.rpm
│   │   ├── perl-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-Carp-1.26-244.amzn2.noarch.rpm
│   │   ├── perl-constant-1.27-2.amzn2.0.1.noarch.rpm
│   │   ├── perl-Encode-2.51-7.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Error-0.17020-2.amzn2.noarch.rpm
│   │   ├── perl-Exporter-5.68-3.amzn2.noarch.rpm
│   │   ├── perl-File-Path-2.09-2.amzn2.noarch.rpm
│   │   ├── perl-File-Temp-0.23.01-3.amzn2.noarch.rpm
│   │   ├── perl-Filter-1.49-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Getopt-Long-2.40-3.amzn2.noarch.rpm
│   │   ├── perl-Git-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── perl-HTTP-Tiny-0.033-3.amzn2.noarch.rpm
│   │   ├── perl-libs-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-macros-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-parent-0.225-244.amzn2.0.1.noarch.rpm
│   │   ├── perl-PathTools-3.40-5.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-294.amzn2.noarch.rpm
│   │   ├── perl-podlators-2.5.1-3.amzn2.0.1.noarch.rpm
│   │   ├── perl-Pod-Perldoc-3.20-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Simple-3.28-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Usage-1.63-3.amzn2.noarch.rpm
│   │   ├── perl-Scalar-List-Utils-1.27-248.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Socket-2.010-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Storable-2.45-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-TermReadKey-2.30-20.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Text-ParseWords-3.29-4.amzn2.noarch.rpm
│   │   ├── perl-threads-1.87-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-threads-shared-1.43-6.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-HiRes-1.9725-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-Local-1.2300-2.amzn2.noarch.rpm
│   │   ├── qrencode-libs-3.4.1-3.amzn2.0.2.x86_64.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── shadow-utils-4.1.5.1-24.amzn2.0.2.x86_64.rpm
│   │   ├── systemd-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-libs-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-sysv-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-77.amzn2.0.2.x86_64.rpm
│   │   ├── ustr-1.0.4-16.amzn2.0.3.x86_64.rpm
│   │   ├── util-linux-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── vim-common-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-enhanced-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-filesystem-8.1.1602-1.amzn2.noarch.rpm
│   │   └── which-2.20-7.amzn2.0.2.x86_64.rpm
│   ├── repo_amazonlinux.txt
│   ├── repo_centos7.5.1804
│   │   ├── acl-2.2.51-14.amzn2.x86_64.rpm
│   │   ├── audit-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── audit-libs-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── cracklib-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cracklib-dicts-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cryptsetup-libs-1.7.4-4.amzn2.x86_64.rpm
│   │   ├── dbus-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── dbus-libs-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── device-mapper-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── device-mapper-libs-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── elfutils-default-yama-scope-0.176-2.amzn2.noarch.rpm
│   │   ├── elfutils-libelf-0.176-2.amzn2.x86_64.rpm
│   │   ├── elfutils-libs-0.176-2.amzn2.x86_64.rpm
│   │   ├── emacs-filesystem-25.3-3.amzn2.0.1.noarch.rpm
│   │   ├── fipscheck-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── fipscheck-lib-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── git-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-doc-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── gpm-libs-1.20.7-15.amzn2.0.2.x86_64.rpm
│   │   ├── groff-base-1.22.2-8.amzn2.0.2.x86_64.rpm
│   │   ├── gzip-1.5-10.amzn2.x86_64.rpm
│   │   ├── kmod-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── kmod-libs-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── less-458-9.amzn2.0.2.x86_64.rpm
│   │   ├── libcap-ng-0.7.5-4.amzn2.0.4.x86_64.rpm
│   │   ├── libedit-3.0-12.20121213cvs.amzn2.0.2.x86_64.rpm
│   │   ├── libfdisk-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libpcap-1.5.3-11.amzn2.x86_64.rpm
│   │   ├── libpwquality-1.2.3-5.amzn2.x86_64.rpm
│   │   ├── libsecret-0.18.5-2.amzn2.0.2.x86_64.rpm
│   │   ├── libsemanage-2.5-11.amzn2.x86_64.rpm
│   │   ├── libsmartcols-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libutempter-1.1.6-4.amzn2.0.2.x86_64.rpm
│   │   ├── lz4-1.7.5-2.amzn2.0.1.x86_64.rpm
│   │   ├── nano-2.9.8-2.amzn2.0.1.x86_64.rpm
│   │   ├── nmap-6.40-13.amzn2.x86_64.rpm
│   │   ├── nmap-ncat-6.40-13.amzn2.x86_64.rpm
│   │   ├── openssh-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── openssh-clients-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── pam-1.1.8-22.amzn2.x86_64.rpm
│   │   ├── pcre2-10.23-2.amzn2.0.2.x86_64.rpm
│   │   ├── perl-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-Carp-1.26-244.amzn2.noarch.rpm
│   │   ├── perl-constant-1.27-2.amzn2.0.1.noarch.rpm
│   │   ├── perl-Encode-2.51-7.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Error-0.17020-2.amzn2.noarch.rpm
│   │   ├── perl-Exporter-5.68-3.amzn2.noarch.rpm
│   │   ├── perl-File-Path-2.09-2.amzn2.noarch.rpm
│   │   ├── perl-File-Temp-0.23.01-3.amzn2.noarch.rpm
│   │   ├── perl-Filter-1.49-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Getopt-Long-2.40-3.amzn2.noarch.rpm
│   │   ├── perl-Git-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── perl-HTTP-Tiny-0.033-3.amzn2.noarch.rpm
│   │   ├── perl-libs-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-macros-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-parent-0.225-244.amzn2.0.1.noarch.rpm
│   │   ├── perl-PathTools-3.40-5.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-294.amzn2.noarch.rpm
│   │   ├── perl-podlators-2.5.1-3.amzn2.0.1.noarch.rpm
│   │   ├── perl-Pod-Perldoc-3.20-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Simple-3.28-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Usage-1.63-3.amzn2.noarch.rpm
│   │   ├── perl-Scalar-List-Utils-1.27-248.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Socket-2.010-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Storable-2.45-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-TermReadKey-2.30-20.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Text-ParseWords-3.29-4.amzn2.noarch.rpm
│   │   ├── perl-threads-1.87-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-threads-shared-1.43-6.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-HiRes-1.9725-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-Local-1.2300-2.amzn2.noarch.rpm
│   │   ├── qrencode-libs-3.4.1-3.amzn2.0.2.x86_64.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── shadow-utils-4.1.5.1-24.amzn2.0.2.x86_64.rpm
│   │   ├── systemd-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-libs-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-sysv-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-77.amzn2.0.2.x86_64.rpm
│   │   ├── ustr-1.0.4-16.amzn2.0.3.x86_64.rpm
│   │   ├── util-linux-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── vim-common-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-enhanced-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-filesystem-8.1.1602-1.amzn2.noarch.rpm
│   │   └── which-2.20-7.amzn2.0.2.x86_64.rpm
│   └── repo_centos7.5.1804.txt
├── centos6
│   ├── repo_centos6
│   │   ├── audit-2.4.5-6.el6.x86_64.rpm
│   │   ├── dbus-glib-0.86-6.el6.x86_64.rpm
│   │   ├── fipscheck-1.2.0-7.el6.x86_64.rpm
│   │   ├── fipscheck-lib-1.2.0-7.el6.x86_64.rpm
│   │   ├── git-1.7.1-9.el6_9.x86_64.rpm
│   │   ├── gpm-libs-1.20.6-12.el6.x86_64.rpm
│   │   ├── hwdata-0.233-20.1.el6.noarch.rpm
│   │   ├── initscripts-9.03.61-1.el6.centos.x86_64.rpm
│   │   ├── iproute-2.6.32-57.el6.x86_64.rpm
│   │   ├── iptables-1.4.7-19.el6.x86_64.rpm
│   │   ├── iputils-20071127-24.el6.x86_64.rpm
│   │   ├── libdrm-2.4.65-2.el6.x86_64.rpm
│   │   ├── libedit-2.11-4.20080712cvs.1.el6.x86_64.rpm
│   │   ├── libpcap-1.4.0-4.20130826git2dbcaa1.el6.x86_64.rpm
│   │   ├── libpciaccess-0.13.4-1.el6.x86_64.rpm
│   │   ├── nano-2.0.9-7.el6.x86_64.rpm
│   │   ├── nc-1.84-24.el6.x86_64.rpm
│   │   ├── nmap-5.51-6.el6.x86_64.rpm
│   │   ├── openssh-5.3p1-124.el6_10.x86_64.rpm
│   │   ├── openssh-clients-5.3p1-124.el6_10.x86_64.rpm
│   │   ├── perl-5.10.1-144.el6.x86_64.rpm
│   │   ├── perl-Error-0.17015-4.el6.noarch.rpm
│   │   ├── perl-Git-1.7.1-9.el6_9.noarch.rpm
│   │   ├── perl-libs-5.10.1-144.el6.x86_64.rpm
│   │   ├── perl-Module-Pluggable-3.90-144.el6.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-144.el6.x86_64.rpm
│   │   ├── perl-Pod-Simple-3.13-144.el6.x86_64.rpm
│   │   ├── perl-version-0.77-144.el6.x86_64.rpm
│   │   ├── plymouth-0.8.3-29.el6.centos.x86_64.rpm
│   │   ├── policycoreutils-2.0.83-30.1.el6_8.x86_64.rpm
│   │   ├── redhat-logos-60.0.14-12.el6.centos.noarch.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── rsync-3.0.6-12.el6.x86_64.rpm
│   │   ├── sysvinit-tools-2.87-6.dsf.el6.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-58.el6.x86_64.rpm
│   │   ├── udev-147-2.74.el6_10.x86_64.rpm
│   │   ├── upstart-0.6.5-17.el6.x86_64.rpm
│   │   ├── util-linux-ng-2.17.2-12.28.el6_9.2.x86_64.rpm
│   │   ├── vim-common-7.4.629-5.el6_10.2.x86_64.rpm
│   │   ├── vim-enhanced-7.4.629-5.el6_10.2.x86_64.rpm
│   │   └── vim-filesystem-7.4.629-5.el6_10.2.x86_64.rpm
│   ├── repo_centos6.txt
│   ├── repo_centos7.5.1804
│   │   ├── audit-2.4.5-6.el6.x86_64.rpm
│   │   ├── dbus-glib-0.86-6.el6.x86_64.rpm
│   │   ├── fipscheck-1.2.0-7.el6.x86_64.rpm
│   │   ├── fipscheck-lib-1.2.0-7.el6.x86_64.rpm
│   │   ├── git-1.7.1-9.el6_9.x86_64.rpm
│   │   ├── gpm-libs-1.20.6-12.el6.x86_64.rpm
│   │   ├── hwdata-0.233-20.1.el6.noarch.rpm
│   │   ├── initscripts-9.03.61-1.el6.centos.x86_64.rpm
│   │   ├── iproute-2.6.32-57.el6.x86_64.rpm
│   │   ├── iptables-1.4.7-19.el6.x86_64.rpm
│   │   ├── iputils-20071127-24.el6.x86_64.rpm
│   │   ├── libdrm-2.4.65-2.el6.x86_64.rpm
│   │   ├── libedit-2.11-4.20080712cvs.1.el6.x86_64.rpm
│   │   ├── libpcap-1.4.0-4.20130826git2dbcaa1.el6.x86_64.rpm
│   │   ├── libpciaccess-0.13.4-1.el6.x86_64.rpm
│   │   ├── nano-2.0.9-7.el6.x86_64.rpm
│   │   ├── nc-1.84-24.el6.x86_64.rpm
│   │   ├── nmap-5.51-6.el6.x86_64.rpm
│   │   ├── openssh-5.3p1-124.el6_10.x86_64.rpm
│   │   ├── openssh-clients-5.3p1-124.el6_10.x86_64.rpm
│   │   ├── perl-5.10.1-144.el6.x86_64.rpm
│   │   ├── perl-Error-0.17015-4.el6.noarch.rpm
│   │   ├── perl-Git-1.7.1-9.el6_9.noarch.rpm
│   │   ├── perl-libs-5.10.1-144.el6.x86_64.rpm
│   │   ├── perl-Module-Pluggable-3.90-144.el6.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-144.el6.x86_64.rpm
│   │   ├── perl-Pod-Simple-3.13-144.el6.x86_64.rpm
│   │   ├── perl-version-0.77-144.el6.x86_64.rpm
│   │   ├── plymouth-0.8.3-29.el6.centos.x86_64.rpm
│   │   ├── policycoreutils-2.0.83-30.1.el6_8.x86_64.rpm
│   │   ├── redhat-logos-60.0.14-12.el6.centos.noarch.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── rsync-3.0.6-12.el6.x86_64.rpm
│   │   ├── sysvinit-tools-2.87-6.dsf.el6.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-58.el6.x86_64.rpm
│   │   ├── udev-147-2.74.el6_10.x86_64.rpm
│   │   ├── upstart-0.6.5-17.el6.x86_64.rpm
│   │   ├── util-linux-ng-2.17.2-12.28.el6_9.2.x86_64.rpm
│   │   ├── vim-common-7.4.629-5.el6_10.2.x86_64.rpm
│   │   ├── vim-enhanced-7.4.629-5.el6_10.2.x86_64.rpm
│   │   └── vim-filesystem-7.4.629-5.el6_10.2.x86_64.rpm
│   └── repo_centos7.5.1804.txt
├── centos6.1
│   ├── repo_amazonlinux
│   │   ├── acl-2.2.51-14.amzn2.x86_64.rpm
│   │   ├── audit-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── audit-libs-2.8.1-3.amzn2.1.x86_64.rpm
│   │   ├── cracklib-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cracklib-dicts-2.9.0-11.amzn2.0.2.x86_64.rpm
│   │   ├── cryptsetup-libs-1.7.4-4.amzn2.x86_64.rpm
│   │   ├── dbus-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── dbus-libs-1.10.24-7.amzn2.x86_64.rpm
│   │   ├── device-mapper-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── device-mapper-libs-1.02.146-4.amzn2.0.2.x86_64.rpm
│   │   ├── elfutils-default-yama-scope-0.176-2.amzn2.noarch.rpm
│   │   ├── elfutils-libelf-0.176-2.amzn2.x86_64.rpm
│   │   ├── elfutils-libs-0.176-2.amzn2.x86_64.rpm
│   │   ├── emacs-filesystem-25.3-3.amzn2.0.1.noarch.rpm
│   │   ├── fipscheck-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── fipscheck-lib-1.4.1-6.amzn2.0.2.x86_64.rpm
│   │   ├── git-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-2.23.1-0.amzn2.0.2.x86_64.rpm
│   │   ├── git-core-doc-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── gpm-libs-1.20.7-15.amzn2.0.2.x86_64.rpm
│   │   ├── groff-base-1.22.2-8.amzn2.0.2.x86_64.rpm
│   │   ├── gzip-1.5-10.amzn2.x86_64.rpm
│   │   ├── kmod-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── kmod-libs-25-3.amzn2.0.2.x86_64.rpm
│   │   ├── less-458-9.amzn2.0.2.x86_64.rpm
│   │   ├── libcap-ng-0.7.5-4.amzn2.0.4.x86_64.rpm
│   │   ├── libedit-3.0-12.20121213cvs.amzn2.0.2.x86_64.rpm
│   │   ├── libfdisk-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libpcap-1.5.3-11.amzn2.x86_64.rpm
│   │   ├── libpwquality-1.2.3-5.amzn2.x86_64.rpm
│   │   ├── libsecret-0.18.5-2.amzn2.0.2.x86_64.rpm
│   │   ├── libsemanage-2.5-11.amzn2.x86_64.rpm
│   │   ├── libsmartcols-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── libutempter-1.1.6-4.amzn2.0.2.x86_64.rpm
│   │   ├── lz4-1.7.5-2.amzn2.0.1.x86_64.rpm
│   │   ├── nano-2.9.8-2.amzn2.0.1.x86_64.rpm
│   │   ├── nmap-6.40-13.amzn2.x86_64.rpm
│   │   ├── nmap-ncat-6.40-13.amzn2.x86_64.rpm
│   │   ├── openssh-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── openssh-clients-7.4p1-21.amzn2.0.1.x86_64.rpm
│   │   ├── pam-1.1.8-22.amzn2.x86_64.rpm
│   │   ├── pcre2-10.23-2.amzn2.0.2.x86_64.rpm
│   │   ├── perl-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-Carp-1.26-244.amzn2.noarch.rpm
│   │   ├── perl-constant-1.27-2.amzn2.0.1.noarch.rpm
│   │   ├── perl-Encode-2.51-7.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Error-0.17020-2.amzn2.noarch.rpm
│   │   ├── perl-Exporter-5.68-3.amzn2.noarch.rpm
│   │   ├── perl-File-Path-2.09-2.amzn2.noarch.rpm
│   │   ├── perl-File-Temp-0.23.01-3.amzn2.noarch.rpm
│   │   ├── perl-Filter-1.49-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Getopt-Long-2.40-3.amzn2.noarch.rpm
│   │   ├── perl-Git-2.23.1-0.amzn2.0.2.noarch.rpm
│   │   ├── perl-HTTP-Tiny-0.033-3.amzn2.noarch.rpm
│   │   ├── perl-libs-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-macros-5.16.3-294.amzn2.x86_64.rpm
│   │   ├── perl-parent-0.225-244.amzn2.0.1.noarch.rpm
│   │   ├── perl-PathTools-3.40-5.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-294.amzn2.noarch.rpm
│   │   ├── perl-podlators-2.5.1-3.amzn2.0.1.noarch.rpm
│   │   ├── perl-Pod-Perldoc-3.20-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Simple-3.28-4.amzn2.noarch.rpm
│   │   ├── perl-Pod-Usage-1.63-3.amzn2.noarch.rpm
│   │   ├── perl-Scalar-List-Utils-1.27-248.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Socket-2.010-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Storable-2.45-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-TermReadKey-2.30-20.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Text-ParseWords-3.29-4.amzn2.noarch.rpm
│   │   ├── perl-threads-1.87-4.amzn2.0.2.x86_64.rpm
│   │   ├── perl-threads-shared-1.43-6.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-HiRes-1.9725-3.amzn2.0.2.x86_64.rpm
│   │   ├── perl-Time-Local-1.2300-2.amzn2.noarch.rpm
│   │   ├── qrencode-libs-3.4.1-3.amzn2.0.2.x86_64.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── shadow-utils-4.1.5.1-24.amzn2.0.2.x86_64.rpm
│   │   ├── systemd-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-libs-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── systemd-sysv-219-57.amzn2.0.9.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-77.amzn2.0.2.x86_64.rpm
│   │   ├── ustr-1.0.4-16.amzn2.0.3.x86_64.rpm
│   │   ├── util-linux-2.30.2-2.amzn2.0.4.x86_64.rpm
│   │   ├── vim-common-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-enhanced-8.1.1602-1.amzn2.x86_64.rpm
│   │   ├── vim-filesystem-8.1.1602-1.amzn2.noarch.rpm
│   │   └── which-2.20-7.amzn2.0.2.x86_64.rpm
│   └── repo_amazonlinux.txt
├── centos7
│   ├── repo_centos7
│   │   ├── audit-2.8.5-4.el7.x86_64.rpm
│   │   ├── fipscheck-1.4.1-6.el7.x86_64.rpm
│   │   ├── fipscheck-lib-1.4.1-6.el7.x86_64.rpm
│   │   ├── git-1.8.3.1-20.el7.x86_64.rpm
│   │   ├── gpm-libs-1.20.7-6.el7.x86_64.rpm
│   │   ├── groff-base-1.22.2-8.el7.x86_64.rpm
│   │   ├── less-458-9.el7.x86_64.rpm
│   │   ├── libedit-3.0-12.20121213cvs.el7.x86_64.rpm
│   │   ├── libpcap-1.5.3-11.el7.x86_64.rpm
│   │   ├── nano-2.3.1-10.el7.x86_64.rpm
│   │   ├── nmap-6.40-19.el7.x86_64.rpm
│   │   ├── nmap-ncat-6.40-19.el7.x86_64.rpm
│   │   ├── openssh-7.4p1-21.el7.x86_64.rpm
│   │   ├── openssh-clients-7.4p1-21.el7.x86_64.rpm
│   │   ├── perl-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-Carp-1.26-244.el7.noarch.rpm
│   │   ├── perl-constant-1.27-2.el7.noarch.rpm
│   │   ├── perl-Encode-2.51-7.el7.x86_64.rpm
│   │   ├── perl-Error-0.17020-2.el7.noarch.rpm
│   │   ├── perl-Exporter-5.68-3.el7.noarch.rpm
│   │   ├── perl-File-Path-2.09-2.el7.noarch.rpm
│   │   ├── perl-File-Temp-0.23.01-3.el7.noarch.rpm
│   │   ├── perl-Filter-1.49-3.el7.x86_64.rpm
│   │   ├── perl-Getopt-Long-2.40-3.el7.noarch.rpm
│   │   ├── perl-Git-1.8.3.1-20.el7.noarch.rpm
│   │   ├── perl-HTTP-Tiny-0.033-3.el7.noarch.rpm
│   │   ├── perl-libs-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-macros-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-parent-0.225-244.el7.noarch.rpm
│   │   ├── perl-PathTools-3.40-5.el7.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-294.el7_6.noarch.rpm
│   │   ├── perl-podlators-2.5.1-3.el7.noarch.rpm
│   │   ├── perl-Pod-Perldoc-3.20-4.el7.noarch.rpm
│   │   ├── perl-Pod-Simple-3.28-4.el7.noarch.rpm
│   │   ├── perl-Pod-Usage-1.63-3.el7.noarch.rpm
│   │   ├── perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm
│   │   ├── perl-Socket-2.010-4.el7.x86_64.rpm
│   │   ├── perl-Storable-2.45-3.el7.x86_64.rpm
│   │   ├── perl-TermReadKey-2.30-20.el7.x86_64.rpm
│   │   ├── perl-Text-ParseWords-3.29-4.el7.noarch.rpm
│   │   ├── perl-threads-1.87-4.el7.x86_64.rpm
│   │   ├── perl-threads-shared-1.43-6.el7.x86_64.rpm
│   │   ├── perl-Time-HiRes-1.9725-3.el7.x86_64.rpm
│   │   ├── perl-Time-Local-1.2300-2.el7.noarch.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── rsync-3.1.2-6.el7_6.1.x86_64.rpm
│   │   ├── systemd-219-67.el7_7.2.x86_64.rpm
│   │   ├── systemd-libs-219-67.el7_7.2.x86_64.rpm
│   │   ├── systemd-sysv-219-67.el7_7.2.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-77.el7.x86_64.rpm
│   │   ├── vim-common-7.4.629-6.el7.x86_64.rpm
│   │   ├── vim-enhanced-7.4.629-6.el7.x86_64.rpm
│   │   ├── vim-filesystem-7.4.629-6.el7.x86_64.rpm
│   │   └── which-2.20-7.el7.x86_64.rpm
│   ├── repo_centos7.5.1804
│   │   ├── audit-2.8.5-4.el7.x86_64.rpm
│   │   ├── fipscheck-1.4.1-6.el7.x86_64.rpm
│   │   ├── fipscheck-lib-1.4.1-6.el7.x86_64.rpm
│   │   ├── git-1.8.3.1-20.el7.x86_64.rpm
│   │   ├── gpm-libs-1.20.7-6.el7.x86_64.rpm
│   │   ├── groff-base-1.22.2-8.el7.x86_64.rpm
│   │   ├── less-458-9.el7.x86_64.rpm
│   │   ├── libedit-3.0-12.20121213cvs.el7.x86_64.rpm
│   │   ├── libpcap-1.5.3-11.el7.x86_64.rpm
│   │   ├── nano-2.3.1-10.el7.x86_64.rpm
│   │   ├── nmap-6.40-19.el7.x86_64.rpm
│   │   ├── nmap-ncat-6.40-19.el7.x86_64.rpm
│   │   ├── openssh-7.4p1-21.el7.x86_64.rpm
│   │   ├── openssh-clients-7.4p1-21.el7.x86_64.rpm
│   │   ├── perl-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-Carp-1.26-244.el7.noarch.rpm
│   │   ├── perl-constant-1.27-2.el7.noarch.rpm
│   │   ├── perl-Encode-2.51-7.el7.x86_64.rpm
│   │   ├── perl-Error-0.17020-2.el7.noarch.rpm
│   │   ├── perl-Exporter-5.68-3.el7.noarch.rpm
│   │   ├── perl-File-Path-2.09-2.el7.noarch.rpm
│   │   ├── perl-File-Temp-0.23.01-3.el7.noarch.rpm
│   │   ├── perl-Filter-1.49-3.el7.x86_64.rpm
│   │   ├── perl-Getopt-Long-2.40-3.el7.noarch.rpm
│   │   ├── perl-Git-1.8.3.1-20.el7.noarch.rpm
│   │   ├── perl-HTTP-Tiny-0.033-3.el7.noarch.rpm
│   │   ├── perl-libs-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-macros-5.16.3-294.el7_6.x86_64.rpm
│   │   ├── perl-parent-0.225-244.el7.noarch.rpm
│   │   ├── perl-PathTools-3.40-5.el7.x86_64.rpm
│   │   ├── perl-Pod-Escapes-1.04-294.el7_6.noarch.rpm
│   │   ├── perl-podlators-2.5.1-3.el7.noarch.rpm
│   │   ├── perl-Pod-Perldoc-3.20-4.el7.noarch.rpm
│   │   ├── perl-Pod-Simple-3.28-4.el7.noarch.rpm
│   │   ├── perl-Pod-Usage-1.63-3.el7.noarch.rpm
│   │   ├── perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm
│   │   ├── perl-Socket-2.010-4.el7.x86_64.rpm
│   │   ├── perl-Storable-2.45-3.el7.x86_64.rpm
│   │   ├── perl-TermReadKey-2.30-20.el7.x86_64.rpm
│   │   ├── perl-Text-ParseWords-3.29-4.el7.noarch.rpm
│   │   ├── perl-threads-1.87-4.el7.x86_64.rpm
│   │   ├── perl-threads-shared-1.43-6.el7.x86_64.rpm
│   │   ├── perl-Time-HiRes-1.9725-3.el7.x86_64.rpm
│   │   ├── perl-Time-Local-1.2300-2.el7.noarch.rpm
│   │   ├── repodata
│   │   │   ├── filelists.sqlite.bz2
│   │   │   ├── filelists.xml.gz
│   │   │   ├── other.sqlite.bz2
│   │   │   ├── other.xml.gz
│   │   │   ├── primary.sqlite.bz2
│   │   │   ├── primary.xml.gz
│   │   │   └── repomd.xml
│   │   ├── rsync-3.1.2-6.el7_6.1.x86_64.rpm
│   │   ├── systemd-219-67.el7_7.2.x86_64.rpm
│   │   ├── systemd-libs-219-67.el7_7.2.x86_64.rpm
│   │   ├── systemd-sysv-219-67.el7_7.2.x86_64.rpm
│   │   ├── tcp_wrappers-libs-7.6-77.el7.x86_64.rpm
│   │   ├── vim-common-7.4.629-6.el7.x86_64.rpm
│   │   ├── vim-enhanced-7.4.629-6.el7.x86_64.rpm
│   │   ├── vim-filesystem-7.4.629-6.el7.x86_64.rpm
│   │   └── which-2.20-7.el7.x86_64.rpm
│   ├── repo_centos7.5.1804.txt
│   └── repo_centos7.txt
└── run.sh

18 directories, 495 files
```

After that, all you need is to install them on your on-premise environment.

