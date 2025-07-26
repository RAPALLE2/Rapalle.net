=======================================================================
Serva v5.0.0 Automated PXE Server                    by Patrick Masotta
http://www.vercot.com/~serva/                   Copyright (c) 2010-2024
=======================================================================


                        Serva Repository Structure


1. NWA_PXE Class Directory

   Non-Windows Install Distributions and bootable sets of type PXE
   (Linux/Android/BSD distributions, Native Hypervisors, Recovery Tools,
   DOS/FreeDOS) must be copied under the NWA_PXE Class directory.

1.1. Non-Windows Install Distributions and bootable sets.

   Their content must be entirely copied under a user defined "head"
   directory, the name cannot contain non-ASCII characters or spaces.
   Each head directory must include a manually created ServaAsset.inf;
   for specific information please read:
   http://vercot.com/~serva/an/NonWindowsPXE3.html



2. Example

   ...\
       NWA_PXE\
               Ubuntu_15.04.Dsk\
                        .disk\...
                        boot\...
                        casper\...
                        ...
                        ServaAsset.inf

               Mint_13.Xf\
                        .disk\...
                        boot\...
                        casper\...
                        ...
                        ServaAsset.inf

               FreeDos\
                        ...
                        ServaAsset.inf


           ^    ^       ^
           |    |       |
   This dir'    |       |
                |       |
   User defined |       |
   Head dir   --'       |
                        |
   Non-Windows Install  |
   Distributions or ----'
   Bootable sets (PXE)


   NOTE: Head directory names prepended by "off_" (w/o quotes) are
   ignored by Serva's BINL engine.


3. Asset information

   The BINL management of Non-Windows Assets (NWA) requires the manual
   creation of the file ServaAsset.inf within every head directory
   containing e.g.



   ServaAsset.inf----------------------------------------------------\

   [PXESERVA_MENU_ENTRY]
   asset         = Ubuntu 15.04 Live
   platform      = amd64

   kernel_BIOS   = /NWA_PXE/$HEAD_DIR$/casper/vmlinuz
   append_BIOS   = showmounts toram root=/dev/cifs initrd=/NWA_PXE/$HEAD_DIR$/casper/initrd.lz,/NWA_PXE/$HEAD_DIR$/casper/INITRD_N11.1.GZ boot=casper netboot=cifs nfsroot=//$IP_BSRV$/NWA_PXE_SHARE/$HEAD_DIR$ NFSOPTS=-ouser=serva,pass=avres,ro ip=dhcp ro

   kernel_efi64   = /NWA_PXE/$HEAD_DIR$/casper/vmlinuz
   append_efi64   = showmounts toram root=/dev/cifs initrd=/NWA_PXE/$HEAD_DIR$/casper/initrd.lz,/NWA_PXE/$HEAD_DIR$/casper/INITRD_N11.1.GZ boot=casper netboot=cifs nfsroot=//$IP_BSRV$/NWA_PXE_SHARE/$HEAD_DIR$ NFSOPTS=-ouser=serva,pass=avres,ro ip=dhcp ro

   ------------------------------------------------------------------/

   The former example requires the directory NWA_PXE MS shared as
   NWA_PXE_SHARE with user=serva and password=avres

   ServaAsset.inf "kernel_x" and "append_x" variables are parsed
   replacing the following case insensitive tokens:

    Token          Replaced with:

   $COMP_NAME$    Serva Computer Name   e.g. M9
   $HEAD_DIR$     Asset Head Directory  e.g. Ubuntu_12.10.Dsk
   $IP_CLNT$      DHCP obtained (yiaddr) Client's IP
   $IP_BSRV$      DHCP obtained (siaddr) Client's Boot Server IP (Serva)
   $IP_GWAY$      DHCP obtained (opt #3) Client's Default Gateway
   $IP_MASK$      DHCP obtained (opt #1) Client's IP Mask


4. Network File Sharing

   Some Non-Windows distributions might require either the NWA_PXE
   directory shared as NWA_PXE_SHARE or offered as root of the Serva's
   HTTP server services. For more examples of ServaAsset.inf files
   please read:
   http://vercot.com/~serva/an/NonWindowsPXE3.html







