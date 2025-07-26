=======================================================================
Serva v5.0.0 Automated PXE Server                    by Patrick Masotta
http://www.vercot.com/~serva/                   Copyright (c) 2010-2024
=======================================================================


                        Serva Repository Structure


1. WIA_RIS Class Directory

   Windows Install Distributions of type RIS (Windows 2000, Windows XP
   32/64) must be copied under the WIA_RIS Class directory.

1.1. Windows Install Distributions.

   They must be entirely copied under a user defined "head" directory
   which name cannot contain non-ASCII characters nor spaces either.

1.1.1. 64 bit RIS OSs.

    Additional steps are needed:

   1) "Copy" the content \AMD64\*.* (about 400 Mb) to I386\
     (it implies merging the content of the \LANG directories)
   2) Optionally if we want to save HDD space we can:
     a) Erase the AMD64 directory with all its content.
     b) Make a junction i.e.
        C:\>junction.exe C:\xxxxx\WIA_RIS\XP_64\AMD64
   C:\xxxxx\WIA_RIS\XP_64\I386


2. Example

...\
    WIA_RIS\
            xp_32\
                   I386\...
                   PRINTERS\...
                   SUPPORT\...
                   ...

            XP_64\
                   I386\...
                   AMD64\...
                   PRINTERS\...
                   SUPPORT\...
                   ...

            W2000AS\
                   I386\...
                   PRINTERS\...
                   SUPPORT\...
                   ...

        ^    ^       ^
        |    |       |
This dir'    |       |
             |       |
User defined |       |
Head dir   --'       |
                     |
Windows Install      |
Distributions   -----'



NOTE: Head directory names prepended by "off_" (w/o quotes) are
ignored by Serva's BINL engine.



3. Network File Sharing

   WIA_RIS' parent directory (TFTP Server Root directory) must be shared
   as WIA_RIS_SHARE using a "Null Session Share". See here for details:
   http://vercot.com/~serva/advanced/NullSessionShares.html

   NOTE: Please consider this share will (by default) expose to
   "ANONYMOUS LOGON" users WIA_WDS' content. This situation can be
   solved by editing WIA_WDS' default sharing permits after
   WIA_RIS_SHARE is created.







