[root@metalgear ~]# `cat /etc/centos-release` <br>
`CentOS Linux release 7.2.1511 (Core)`

[root@metalgear ~]# `uname -a` <br>
`Linux metalgear.mydomain.com 3.10.0-327.13.1.el7.x86_64 #1 SMP Thu Mar 31 16:04:38 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux`

---

### Install Git

##### System will require direct internet connection (proxy might cause issues)

[root@metalgear ~]# `yum install git-all`

### Output :

```
Loaded plugins: fastestmirror, langpacks
base                                                                                              | 3.6 kB  00:00:00     
epel/x86_64/metalink                                                                              |  12 kB  00:00:00     
epel                                                                                              | 4.3 kB  00:00:00     
extras                                                                                            | 3.4 kB  00:00:00     
updates                                                                                           | 3.4 kB  00:00:00     
virtualbox                                                                                        |  951 B  00:00:00     
(1/4): extras/7/x86_64/primary_db                                                                 | 117 kB  00:00:00     
(2/4): epel/x86_64/updateinfo                                                                     | 525 kB  00:00:01     
(3/4): epel/x86_64/primary_db                                                                     | 4.0 MB  00:00:02     
(4/4): updates/7/x86_64/primary_db                                                                | 4.1 MB  00:00:06     
Determining fastest mirrors
 * base: mirror.metrocast.net
 * epel: mirror.symnds.com
 * extras: mirror.net.cen.ct.gov
 * updates: mirror.symnds.com
Resolving Dependencies
--> Running transaction check
---> Package git-all.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl-Git = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: gitk = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git-svn = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git-p4 = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git-gui = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git-email = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git-cvs = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: git = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: emacs-git = 1.8.3.1-6.el7_2.1 for package: git-all-1.8.3.1-6.el7_2.1.noarch
--> Running transaction check
---> Package emacs-git.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: emacs(bin) >= 24.3 for package: emacs-git-1.8.3.1-6.el7_2.1.noarch
---> Package git.x86_64 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl(Term::ReadKey) for package: git-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Error) for package: git-1.8.3.1-6.el7_2.1.x86_64
---> Package git-cvs.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl-DBD-SQLite for package: git-cvs-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(Data::Dumper) for package: git-cvs-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(DBI) for package: git-cvs-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: cvsps for package: git-cvs-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: cvs for package: git-cvs-1.8.3.1-6.el7_2.1.noarch
---> Package git-email.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl(Net::SMTP::SSL) for package: git-email-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(Authen::SASL) for package: git-email-1.8.3.1-6.el7_2.1.noarch
---> Package git-gui.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: tk >= 8.4 for package: git-gui-1.8.3.1-6.el7_2.1.noarch
---> Package git-p4.noarch 0:1.8.3.1-6.el7_2.1 will be installed
---> Package git-svn.x86_64 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: subversion for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Utils) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Ra) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Prompt) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Migration) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Log) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Fetcher) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN::Editor) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Git::SVN) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
--> Processing Dependency: perl(Digest::MD5) for package: git-svn-1.8.3.1-6.el7_2.1.x86_64
---> Package gitk.noarch 0:1.8.3.1-6.el7_2.1 will be installed
---> Package perl-Git.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Running transaction check
---> Package cvs.x86_64 0:1.11.23-35.el7 will be installed
---> Package cvsps.x86_64 0:2.2-0.14.b1.el7 will be installed
---> Package emacs-nox.x86_64 1:24.3-18.el7 will be installed
--> Processing Dependency: emacs-common = 1:24.3-18.el7 for package: 1:emacs-nox-24.3-18.el7.x86_64
---> Package perl-Authen-SASL.noarch 0:2.15-10.el7 will be installed
--> Processing Dependency: perl(GSSAPI) for package: perl-Authen-SASL-2.15-10.el7.noarch
--> Processing Dependency: perl(Digest::HMAC_MD5) for package: perl-Authen-SASL-2.15-10.el7.noarch
---> Package perl-DBD-SQLite.x86_64 0:1.39-3.el7 will be installed
---> Package perl-DBI.x86_64 0:1.627-4.el7 will be installed
--> Processing Dependency: perl(RPC::PlServer) >= 0.2001 for package: perl-DBI-1.627-4.el7.x86_64
--> Processing Dependency: perl(RPC::PlClient) >= 0.2000 for package: perl-DBI-1.627-4.el7.x86_64
---> Package perl-Data-Dumper.x86_64 0:2.145-3.el7 will be installed
---> Package perl-Digest-MD5.x86_64 0:2.52-3.el7 will be installed
--> Processing Dependency: perl(Digest::base) >= 1.00 for package: perl-Digest-MD5-2.52-3.el7.x86_64
---> Package perl-Error.noarch 1:0.17020-2.el7 will be installed
---> Package perl-Git-SVN.noarch 0:1.8.3.1-6.el7_2.1 will be installed
--> Processing Dependency: perl(YAML::Any) for package: perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(SVN::Ra) for package: perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(SVN::Delta) for package: perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(SVN::Core) for package: perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch
--> Processing Dependency: perl(SVN::Client) for package: perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch
---> Package perl-Net-SMTP-SSL.noarch 0:1.01-13.el7 will be installed
--> Processing Dependency: perl(IO::Socket::SSL) for package: perl-Net-SMTP-SSL-1.01-13.el7.noarch
---> Package perl-TermReadKey.x86_64 0:2.30-20.el7 will be installed
---> Package subversion.x86_64 0:1.7.14-10.el7 will be installed
--> Processing Dependency: subversion-libs(x86-64) = 1.7.14-10.el7 for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_wc-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_subr-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_repos-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_ra_svn-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_ra_neon-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_ra_local-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_ra-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_fs_util-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_fs_fs-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_fs_base-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_fs-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_diff-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_delta-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libsvn_client-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libaprutil-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
--> Processing Dependency: libapr-1.so.0()(64bit) for package: subversion-1.7.14-10.el7.x86_64
---> Package tk.x86_64 1:8.5.13-6.el7 will be installed
--> Processing Dependency: tcl = 1:8.5.13 for package: 1:tk-8.5.13-6.el7.x86_64
--> Processing Dependency: tcl >= 1:8.5.13-5 for package: 1:tk-8.5.13-6.el7.x86_64
--> Processing Dependency: libtcl8.5.so()(64bit) for package: 1:tk-8.5.13-6.el7.x86_64
--> Running transaction check
---> Package apr.x86_64 0:1.4.8-3.el7 will be installed
---> Package apr-util.x86_64 0:1.5.2-6.el7 will be installed
---> Package emacs-common.x86_64 1:24.3-18.el7 will be installed
--> Processing Dependency: liblockfile.so.1()(64bit) for package: 1:emacs-common-24.3-18.el7.x86_64
---> Package perl-Digest.noarch 0:1.17-245.el7 will be installed
---> Package perl-Digest-HMAC.noarch 0:1.03-5.el7 will be installed
--> Processing Dependency: perl(Digest::SHA) for package: perl-Digest-HMAC-1.03-5.el7.noarch
---> Package perl-GSSAPI.x86_64 0:0.28-9.el7 will be installed
---> Package perl-IO-Socket-SSL.noarch 0:1.94-3.el7 will be installed
--> Processing Dependency: perl(Net::SSLeay) >= 1.21 for package: perl-IO-Socket-SSL-1.94-3.el7.noarch
--> Processing Dependency: perl(IO::Socket::IP) >= 0.20 for package: perl-IO-Socket-SSL-1.94-3.el7.noarch
--> Processing Dependency: perl(Net::SSLeay) for package: perl-IO-Socket-SSL-1.94-3.el7.noarch
--> Processing Dependency: perl(Net::LibIDN) for package: perl-IO-Socket-SSL-1.94-3.el7.noarch
---> Package perl-PlRPC.noarch 0:0.2020-14.el7 will be installed
--> Processing Dependency: perl(Net::Daemon) >= 0.13 for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Net::Daemon::Test) for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Net::Daemon::Log) for package: perl-PlRPC-0.2020-14.el7.noarch
--> Processing Dependency: perl(Compress::Zlib) for package: perl-PlRPC-0.2020-14.el7.noarch
---> Package perl-YAML.noarch 0:0.84-5.el7 will be installed
---> Package subversion-libs.x86_64 0:1.7.14-10.el7 will be installed
---> Package subversion-perl.x86_64 0:1.7.14-10.el7 will be installed
---> Package tcl.x86_64 1:8.5.13-8.el7 will be installed
--> Running transaction check
---> Package liblockfile.x86_64 0:1.08-17.el7 will be installed
---> Package perl-Digest-SHA.x86_64 1:5.85-3.el7 will be installed
---> Package perl-IO-Compress.noarch 0:2.061-2.el7 will be installed
--> Processing Dependency: perl(Compress::Raw::Zlib) >= 2.061 for package: perl-IO-Compress-2.061-2.el7.noarch
--> Processing Dependency: perl(Compress::Raw::Bzip2) >= 2.061 for package: perl-IO-Compress-2.061-2.el7.noarch
---> Package perl-IO-Socket-IP.noarch 0:0.21-4.el7 will be installed
---> Package perl-Net-Daemon.noarch 0:0.48-5.el7 will be installed
---> Package perl-Net-LibIDN.x86_64 0:0.12-15.el7 will be installed
---> Package perl-Net-SSLeay.x86_64 0:1.55-3.el7 will be installed
--> Running transaction check
---> Package perl-Compress-Raw-Bzip2.x86_64 0:2.061-3.el7 will be installed
---> Package perl-Compress-Raw-Zlib.x86_64 1:2.061-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=========================================================================================================================
 Package                               Arch                 Version                          Repository             Size
=========================================================================================================================
Installing:
 git-all                               noarch               1.8.3.1-6.el7_2.1                updates                24 k
Installing for dependencies:
 apr                                   x86_64               1.4.8-3.el7                      base                  103 k
 apr-util                              x86_64               1.5.2-6.el7                      base                   92 k
 cvs                                   x86_64               1.11.23-35.el7                   base                  581 k
 cvsps                                 x86_64               2.2-0.14.b1.el7                  base                   58 k
 emacs-common                          x86_64               1:24.3-18.el7                    base                   20 M
 emacs-git                             noarch               1.8.3.1-6.el7_2.1                updates                48 k
 emacs-nox                             x86_64               1:24.3-18.el7                    base                  2.4 M
 git                                   x86_64               1.8.3.1-6.el7_2.1                updates               4.4 M
 git-cvs                               noarch               1.8.3.1-6.el7_2.1                updates               110 k
 git-email                             noarch               1.8.3.1-6.el7_2.1                updates                56 k
 git-gui                               noarch               1.8.3.1-6.el7_2.1                updates               235 k
 git-p4                                noarch               1.8.3.1-6.el7_2.1                updates                77 k
 git-svn                               x86_64               1.8.3.1-6.el7_2.1                updates               433 k
 gitk                                  noarch               1.8.3.1-6.el7_2.1                updates               149 k
 liblockfile                           x86_64               1.08-17.el7                      base                   21 k
 perl-Authen-SASL                      noarch               2.15-10.el7                      base                   57 k
 perl-Compress-Raw-Bzip2               x86_64               2.061-3.el7                      base                   32 k
 perl-Compress-Raw-Zlib                x86_64               1:2.061-4.el7                    base                   57 k
 perl-DBD-SQLite                       x86_64               1.39-3.el7                       base                  1.3 M
 perl-DBI                              x86_64               1.627-4.el7                      base                  802 k
 perl-Data-Dumper                      x86_64               2.145-3.el7                      base                   47 k
 perl-Digest                           noarch               1.17-245.el7                     base                   23 k
 perl-Digest-HMAC                      noarch               1.03-5.el7                       base                   16 k
 perl-Digest-MD5                       x86_64               2.52-3.el7                       base                   30 k
 perl-Digest-SHA                       x86_64               1:5.85-3.el7                     base                   58 k
 perl-Error                            noarch               1:0.17020-2.el7                  base                   32 k
 perl-GSSAPI                           x86_64               0.28-9.el7                       base                   59 k
 perl-Git                              noarch               1.8.3.1-6.el7_2.1                updates                53 k
 perl-Git-SVN                          noarch               1.8.3.1-6.el7_2.1                updates                84 k
 perl-IO-Compress                      noarch               2.061-2.el7                      base                  260 k
 perl-IO-Socket-IP                     noarch               0.21-4.el7                       base                   35 k
 perl-IO-Socket-SSL                    noarch               1.94-3.el7                       base                  113 k
 perl-Net-Daemon                       noarch               0.48-5.el7                       base                   51 k
 perl-Net-LibIDN                       x86_64               0.12-15.el7                      base                   28 k
 perl-Net-SMTP-SSL                     noarch               1.01-13.el7                      base                  9.1 k
 perl-Net-SSLeay                       x86_64               1.55-3.el7                       base                  285 k
 perl-PlRPC                            noarch               0.2020-14.el7                    base                   36 k
 perl-TermReadKey                      x86_64               2.30-20.el7                      base                   31 k
 perl-YAML                             noarch               0.84-5.el7                       base                   84 k
 subversion                            x86_64               1.7.14-10.el7                    base                  1.0 M
 subversion-libs                       x86_64               1.7.14-10.el7                    base                  921 k
 subversion-perl                       x86_64               1.7.14-10.el7                    base                  798 k
 tcl                                   x86_64               1:8.5.13-8.el7                   base                  1.9 M
 tk                                    x86_64               1:8.5.13-6.el7                   base                  1.4 M

Transaction Summary
=========================================================================================================================
Install  1 Package (+44 Dependent packages)

Total download size: 39 M
Installed size: 137 M
Is this ok [y/d/N]: y
Downloading packages:
(1/45): apr-util-1.5.2-6.el7.x86_64.rpm                                                           |  92 kB  00:00:00     
(2/45): cvsps-2.2-0.14.b1.el7.x86_64.rpm                                                          |  58 kB  00:00:00     
(3/45): emacs-git-1.8.3.1-6.el7_2.1.noarch.rpm                                                    |  48 kB  00:00:00     
(4/45): apr-1.4.8-3.el7.x86_64.rpm                                                                | 103 kB  00:00:00     
(5/45): git-all-1.8.3.1-6.el7_2.1.noarch.rpm                                                      |  24 kB  00:00:00     
(6/45): git-cvs-1.8.3.1-6.el7_2.1.noarch.rpm                                                      | 110 kB  00:00:00     
(7/45): git-email-1.8.3.1-6.el7_2.1.noarch.rpm                                                    |  56 kB  00:00:00     
(8/45): git-gui-1.8.3.1-6.el7_2.1.noarch.rpm                                                      | 235 kB  00:00:00     
(9/45): git-p4-1.8.3.1-6.el7_2.1.noarch.rpm                                                       |  77 kB  00:00:00     
(10/45): git-svn-1.8.3.1-6.el7_2.1.x86_64.rpm                                                     | 433 kB  00:00:00     
(11/45): cvs-1.11.23-35.el7.x86_64.rpm                                                            | 581 kB  00:00:02     
(12/45): gitk-1.8.3.1-6.el7_2.1.noarch.rpm                                                        | 149 kB  00:00:00     
(13/45): liblockfile-1.08-17.el7.x86_64.rpm                                                       |  21 kB  00:00:00     
(14/45): perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64.rpm                                           |  32 kB  00:00:00     
(15/45): perl-Authen-SASL-2.15-10.el7.noarch.rpm                                                  |  57 kB  00:00:00     
(16/45): perl-Compress-Raw-Zlib-2.061-4.el7.x86_64.rpm                                            |  57 kB  00:00:00     
(17/45): git-1.8.3.1-6.el7_2.1.x86_64.rpm                                                         | 4.4 MB  00:00:03     
(18/45): perl-DBI-1.627-4.el7.x86_64.rpm                                                          | 802 kB  00:00:01     
(19/45): perl-Data-Dumper-2.145-3.el7.x86_64.rpm                                                  |  47 kB  00:00:00     
(20/45): perl-Digest-1.17-245.el7.noarch.rpm                                                      |  23 kB  00:00:00     
(21/45): perl-Digest-HMAC-1.03-5.el7.noarch.rpm                                                   |  16 kB  00:00:00     
(22/45): perl-Digest-MD5-2.52-3.el7.x86_64.rpm                                                    |  30 kB  00:00:00     
(23/45): perl-Error-0.17020-2.el7.noarch.rpm                                                      |  32 kB  00:00:00     
(24/45): perl-Digest-SHA-5.85-3.el7.x86_64.rpm                                                    |  58 kB  00:00:00     
(25/45): perl-GSSAPI-0.28-9.el7.x86_64.rpm                                                        |  59 kB  00:00:00     
(26/45): perl-Git-1.8.3.1-6.el7_2.1.noarch.rpm                                                    |  53 kB  00:00:00     
(27/45): perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch.rpm                                                |  84 kB  00:00:00     
(28/45): perl-IO-Socket-IP-0.21-4.el7.noarch.rpm                                                  |  35 kB  00:00:00     
(29/45): perl-IO-Compress-2.061-2.el7.noarch.rpm                                                  | 260 kB  00:00:00     
(30/45): perl-Net-Daemon-0.48-5.el7.noarch.rpm                                                    |  51 kB  00:00:00     
(31/45): perl-Net-LibIDN-0.12-15.el7.x86_64.rpm                                                   |  28 kB  00:00:00     
(32/45): perl-Net-SMTP-SSL-1.01-13.el7.noarch.rpm                                                 | 9.1 kB  00:00:00     
(33/45): perl-IO-Socket-SSL-1.94-3.el7.noarch.rpm                                                 | 113 kB  00:00:00     
(34/45): perl-PlRPC-0.2020-14.el7.noarch.rpm                                                      |  36 kB  00:00:00     
(35/45): perl-TermReadKey-2.30-20.el7.x86_64.rpm                                                  |  31 kB  00:00:00     
(36/45): perl-Net-SSLeay-1.55-3.el7.x86_64.rpm                                                    | 285 kB  00:00:00     
(37/45): perl-YAML-0.84-5.el7.noarch.rpm                                                          |  84 kB  00:00:00     
(38/45): perl-DBD-SQLite-1.39-3.el7.x86_64.rpm                                                    | 1.3 MB  00:00:03     
(39/45): emacs-nox-24.3-18.el7.x86_64.rpm                                                         | 2.4 MB  00:00:06     
(40/45): subversion-1.7.14-10.el7.x86_64.rpm                                                      | 1.0 MB  00:00:01     
(41/45): subversion-libs-1.7.14-10.el7.x86_64.rpm                                                 | 921 kB  00:00:01     
(42/45): subversion-perl-1.7.14-10.el7.x86_64.rpm                                                 | 798 kB  00:00:01     
(43/45): tcl-8.5.13-8.el7.x86_64.rpm                                                              | 1.9 MB  00:00:01     
(44/45): tk-8.5.13-6.el7.x86_64.rpm                                                               | 1.4 MB  00:00:04     
(45/45): emacs-common-24.3-18.el7.x86_64.rpm                                                      |  20 MB  00:00:34     
-------------------------------------------------------------------------------------------------------------------------
Total                                                                                    1.1 MB/s |  39 MB  00:00:34     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : perl-Data-Dumper-2.145-3.el7.x86_64                                                                  1/45 
  Installing : apr-1.4.8-3.el7.x86_64                                                                               2/45 
  Installing : apr-util-1.5.2-6.el7.x86_64                                                                          3/45 
  Installing : 1:perl-Error-0.17020-2.el7.noarch                                                                    4/45 
  Installing : subversion-libs-1.7.14-10.el7.x86_64                                                                 5/45 
  Installing : subversion-1.7.14-10.el7.x86_64                                                                      6/45 
  Installing : perl-Digest-1.17-245.el7.noarch                                                                      7/45 
  Installing : perl-Digest-MD5-2.52-3.el7.x86_64                                                                    8/45 
  Installing : cvs-1.11.23-35.el7.x86_64                                                                            9/45 
  Installing : perl-TermReadKey-2.30-20.el7.x86_64                                                                 10/45 
  Installing : perl-Git-1.8.3.1-6.el7_2.1.noarch                                                                   11/45 
  Installing : git-1.8.3.1-6.el7_2.1.x86_64                                                                        12/45 
  Installing : git-p4-1.8.3.1-6.el7_2.1.noarch                                                                     13/45 
  Installing : cvsps-2.2-0.14.b1.el7.x86_64                                                                        14/45 
  Installing : 1:perl-Digest-SHA-5.85-3.el7.x86_64                                                                 15/45 
  Installing : perl-Digest-HMAC-1.03-5.el7.noarch                                                                  16/45 
  Installing : subversion-perl-1.7.14-10.el7.x86_64                                                                17/45 
  Installing : perl-YAML-0.84-5.el7.noarch                                                                         18/45 
  Installing : perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch                                                               19/45 
  Installing : git-svn-1.8.3.1-6.el7_2.1.x86_64                                                                    20/45 
  Installing : perl-Net-SSLeay-1.55-3.el7.x86_64                                                                   21/45 
  Installing : perl-GSSAPI-0.28-9.el7.x86_64                                                                       22/45 
  Installing : perl-Authen-SASL-2.15-10.el7.noarch                                                                 23/45 
  Installing : 1:perl-Compress-Raw-Zlib-2.061-4.el7.x86_64                                                         24/45 
  Installing : perl-Net-Daemon-0.48-5.el7.noarch                                                                   25/45 
  Installing : perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64                                                          26/45 
  Installing : perl-IO-Compress-2.061-2.el7.noarch                                                                 27/45 
  Installing : perl-PlRPC-0.2020-14.el7.noarch                                                                     28/45 
  Installing : perl-DBI-1.627-4.el7.x86_64                                                                         29/45 
  Installing : perl-DBD-SQLite-1.39-3.el7.x86_64                                                                   30/45 
  Installing : git-cvs-1.8.3.1-6.el7_2.1.noarch                                                                    31/45 
  Installing : perl-Net-LibIDN-0.12-15.el7.x86_64                                                                  32/45 
  Installing : perl-IO-Socket-IP-0.21-4.el7.noarch                                                                 33/45 
  Installing : perl-IO-Socket-SSL-1.94-3.el7.noarch                                                                34/45 
  Installing : perl-Net-SMTP-SSL-1.01-13.el7.noarch                                                                35/45 
  Installing : git-email-1.8.3.1-6.el7_2.1.noarch                                                                  36/45 
  Installing : liblockfile-1.08-17.el7.x86_64                                                                      37/45 
  Installing : 1:emacs-common-24.3-18.el7.x86_64                                                                   38/45 
  Installing : 1:emacs-nox-24.3-18.el7.x86_64                                                                      39/45 
  Installing : emacs-git-1.8.3.1-6.el7_2.1.noarch                                                                  40/45 
  Installing : 1:tcl-8.5.13-8.el7.x86_64                                                                           41/45 
  Installing : 1:tk-8.5.13-6.el7.x86_64                                                                            42/45 
  Installing : gitk-1.8.3.1-6.el7_2.1.noarch                                                                       43/45 
  Installing : git-gui-1.8.3.1-6.el7_2.1.noarch                                                                    44/45 
  Installing : git-all-1.8.3.1-6.el7_2.1.noarch                                                                    45/45 
  Verifying  : 1:tcl-8.5.13-8.el7.x86_64                                                                            1/45 
  Verifying  : liblockfile-1.08-17.el7.x86_64                                                                       2/45 
  Verifying  : subversion-perl-1.7.14-10.el7.x86_64                                                                 3/45 
  Verifying  : perl-IO-Socket-IP-0.21-4.el7.noarch                                                                  4/45 
  Verifying  : perl-IO-Compress-2.061-2.el7.noarch                                                                  5/45 
  Verifying  : apr-1.4.8-3.el7.x86_64                                                                               6/45 
  Verifying  : perl-DBD-SQLite-1.39-3.el7.x86_64                                                                    7/45 
  Verifying  : perl-Net-LibIDN-0.12-15.el7.x86_64                                                                   8/45 
  Verifying  : emacs-git-1.8.3.1-6.el7_2.1.noarch                                                                   9/45 
  Verifying  : perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64                                                          10/45 
  Verifying  : gitk-1.8.3.1-6.el7_2.1.noarch                                                                       11/45 
  Verifying  : perl-Net-Daemon-0.48-5.el7.noarch                                                                   12/45 
  Verifying  : perl-TermReadKey-2.30-20.el7.x86_64                                                                 13/45 
  Verifying  : 1:tk-8.5.13-6.el7.x86_64                                                                            14/45 
  Verifying  : perl-Digest-MD5-2.52-3.el7.x86_64                                                                   15/45 
  Verifying  : subversion-1.7.14-10.el7.x86_64                                                                     16/45 
  Verifying  : git-svn-1.8.3.1-6.el7_2.1.x86_64                                                                    17/45 
  Verifying  : git-email-1.8.3.1-6.el7_2.1.noarch                                                                  18/45 
  Verifying  : cvs-1.11.23-35.el7.x86_64                                                                           19/45 
  Verifying  : perl-DBI-1.627-4.el7.x86_64                                                                         20/45 
  Verifying  : perl-Authen-SASL-2.15-10.el7.noarch                                                                 21/45 
  Verifying  : perl-Git-SVN-1.8.3.1-6.el7_2.1.noarch                                                               22/45 
  Verifying  : 1:emacs-common-24.3-18.el7.x86_64                                                                   23/45 
  Verifying  : perl-YAML-0.84-5.el7.noarch                                                                         24/45 
  Verifying  : perl-Data-Dumper-2.145-3.el7.x86_64                                                                 25/45 
  Verifying  : perl-Git-1.8.3.1-6.el7_2.1.noarch                                                                   26/45 
  Verifying  : git-all-1.8.3.1-6.el7_2.1.noarch                                                                    27/45 
  Verifying  : apr-util-1.5.2-6.el7.x86_64                                                                         28/45 
  Verifying  : git-cvs-1.8.3.1-6.el7_2.1.noarch                                                                    29/45 
  Verifying  : perl-Digest-HMAC-1.03-5.el7.noarch                                                                  30/45 
  Verifying  : 1:perl-Compress-Raw-Zlib-2.061-4.el7.x86_64                                                         31/45 
  Verifying  : perl-GSSAPI-0.28-9.el7.x86_64                                                                       32/45 
  Verifying  : perl-Net-SMTP-SSL-1.01-13.el7.noarch                                                                33/45 
  Verifying  : 1:perl-Digest-SHA-5.85-3.el7.x86_64                                                                 34/45 
  Verifying  : cvsps-2.2-0.14.b1.el7.x86_64                                                                        35/45 
  Verifying  : perl-PlRPC-0.2020-14.el7.noarch                                                                     36/45 
  Verifying  : 1:perl-Error-0.17020-2.el7.noarch                                                                   37/45 
  Verifying  : perl-Net-SSLeay-1.55-3.el7.x86_64                                                                   38/45 
  Verifying  : 1:emacs-nox-24.3-18.el7.x86_64                                                                      39/45 
  Verifying  : subversion-libs-1.7.14-10.el7.x86_64                                                                40/45 
  Verifying  : git-p4-1.8.3.1-6.el7_2.1.noarch                                                                     41/45 
  Verifying  : git-gui-1.8.3.1-6.el7_2.1.noarch                                                                    42/45 
  Verifying  : perl-IO-Socket-SSL-1.94-3.el7.noarch                                                                43/45 
  Verifying  : git-1.8.3.1-6.el7_2.1.x86_64                                                                        44/45 
  Verifying  : perl-Digest-1.17-245.el7.noarch                                                                     45/45 

Installed:
  git-all.noarch 0:1.8.3.1-6.el7_2.1                                                                                     

Dependency Installed:
  apr.x86_64 0:1.4.8-3.el7                                    apr-util.x86_64 0:1.5.2-6.el7                             
  cvs.x86_64 0:1.11.23-35.el7                                 cvsps.x86_64 0:2.2-0.14.b1.el7                            
  emacs-common.x86_64 1:24.3-18.el7                           emacs-git.noarch 0:1.8.3.1-6.el7_2.1                      
  emacs-nox.x86_64 1:24.3-18.el7                              git.x86_64 0:1.8.3.1-6.el7_2.1                            
  git-cvs.noarch 0:1.8.3.1-6.el7_2.1                          git-email.noarch 0:1.8.3.1-6.el7_2.1                      
  git-gui.noarch 0:1.8.3.1-6.el7_2.1                          git-p4.noarch 0:1.8.3.1-6.el7_2.1                         
  git-svn.x86_64 0:1.8.3.1-6.el7_2.1                          gitk.noarch 0:1.8.3.1-6.el7_2.1                           
  liblockfile.x86_64 0:1.08-17.el7                            perl-Authen-SASL.noarch 0:2.15-10.el7                     
  perl-Compress-Raw-Bzip2.x86_64 0:2.061-3.el7                perl-Compress-Raw-Zlib.x86_64 1:2.061-4.el7               
  perl-DBD-SQLite.x86_64 0:1.39-3.el7                         perl-DBI.x86_64 0:1.627-4.el7                             
  perl-Data-Dumper.x86_64 0:2.145-3.el7                       perl-Digest.noarch 0:1.17-245.el7                         
  perl-Digest-HMAC.noarch 0:1.03-5.el7                        perl-Digest-MD5.x86_64 0:2.52-3.el7                       
  perl-Digest-SHA.x86_64 1:5.85-3.el7                         perl-Error.noarch 1:0.17020-2.el7                         
  perl-GSSAPI.x86_64 0:0.28-9.el7                             perl-Git.noarch 0:1.8.3.1-6.el7_2.1                       
  perl-Git-SVN.noarch 0:1.8.3.1-6.el7_2.1                     perl-IO-Compress.noarch 0:2.061-2.el7                     
  perl-IO-Socket-IP.noarch 0:0.21-4.el7                       perl-IO-Socket-SSL.noarch 0:1.94-3.el7                    
  perl-Net-Daemon.noarch 0:0.48-5.el7                         perl-Net-LibIDN.x86_64 0:0.12-15.el7                      
  perl-Net-SMTP-SSL.noarch 0:1.01-13.el7                      perl-Net-SSLeay.x86_64 0:1.55-3.el7                       
  perl-PlRPC.noarch 0:0.2020-14.el7                           perl-TermReadKey.x86_64 0:2.30-20.el7                     
  perl-YAML.noarch 0:0.84-5.el7                               subversion.x86_64 0:1.7.14-10.el7                         
  subversion-libs.x86_64 0:1.7.14-10.el7                      subversion-perl.x86_64 0:1.7.14-10.el7                    
  tcl.x86_64 1:8.5.13-8.el7                                   tk.x86_64 1:8.5.13-6.el7                                  

Complete!
```

[root@metalgear ~]# `which git` <br>
`/bin/git`


[cass@metalgear ~]$ `which git` <br>
`/usr/bin/git`
