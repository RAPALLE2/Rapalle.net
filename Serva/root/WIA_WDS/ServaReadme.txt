=======================================================================
Serva v5.0.0 Automated PXE Server                    by Patrick Masotta
http://www.vercot.com/~serva/                   Copyright (c) 2010-2024
=======================================================================


                        Serva Repository Structure


1. WIA_WDS Class Directory

   Windows Install Distributions of type WDS (MS Vista and up) and
   stand-alone bootable WIM files assets must be copied under the
   WIA_WDS Class directory.

1.1. Windows Install Distributions.

   Their content must be entirely copied under a user defined "head"
   directory which name cannot contain non-ASCII characters nor spaces
   either.


1.2. Stand-alone bootable WIM files.

   They must be copied under a user defined "head" directory.
   Additionally the WIM file needs to be accompanied by the following
   files:
    1) boot.sdi
    2) pxeboot.n12 and bootmgr.exe (only if these files are not already
   included within the WIM).

   NOTE: Head directories including more than a single WIM file will be
   ignored by Serva's BINL engine.


2. Example

...\
    WIA_WDS\
            W8_Ent_32\
                    BOOT\...
                    SOURCES\...
                    SUPPORT\...
                    ...

            W10_64\
                    BOOT\...
                    SOURCES\...
                    SUPPORT\...
                    ...

            WinPE_64\
                    winpe_64.wim
                    pxeboot.n12
                    bootmgr.exe
                    boot.sdi

            Unattend.ini

        ^    ^       ^
        |    |       |
This dir'    |       |
             |       |
User defined |       |
Head dir   --'       |
                     |
Windows Install      |
Distributions or ----'
Bootable WIMs


NOTE: Head directory names prepended by "off_" (w/o quotes) are
ignored by Serva's BINL engine.



3. Network File Sharing

   The WIA_WDS directory must be shared as WIA_WDS_SHARE. When
   installing a WDS OS ServaPENet will connect to WIA_WDS_SHARE asking
   for a username and password corresponding to any user with, at
   minimum, reading rights over WIA_WDS_SHARE. Username and password
   must not be empty.


4. Unattended Serva repository login

     When installing WDS OSs ServaPENet login can be globally automated
     by creating under this \WIA_WDS class directory the file
     Unattend.ini


     / Unattend.ini ------------------------------------\

     [windowsPE-Setup-Login-Credentials]
     Domain   = WIA_WDS_SHARE_DomainName (only if needed)
     Password = WIA_WDS_SHARE_userName
     Username = WIA_WDS_SHARE_userPassword

     \--------------------------------------------------/



5. Requirements.

   Booting stand-alone bootable WIM files and unattended Serva
   repository login requires Serva "Professional"







