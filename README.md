# Basher
<h2>Build your own linux distro and share it all over the world within a moment.</h2>

    a script modified from Remastersys, which will now create a livecd/dvd from a working BasH Linux install .

<h3>Limitations of remastering</h3>

Due to some common questions I keep getting asked repeatedly I have put the answers here.

There are some limitations for remastering right now and they have absolutely nothing to do with Remastersys itlself.

1 - Nvidia and ATI proprietary drivers are disabled at the kernel level by ubuntu's casper scripts - no workaround

2 - limit of 4Gig for any single file on the iso file which is a limitation of the iso9660 spec which means the compressed filesystem must be 4G or less - no workaround

3 - no official text mode installer for the livecd so all remasters that you want to be able to install must have a gui

    no workaround

4 - Install options limited to what Ubuntu's installer, Ubiquity can do - no workaround

5 - In order for the Ubuntu casper scripts to create and boot into the livecd user, either gdm or kdm must be used as the login manager - no workaround

6 - the livecd is limited to 1 iso file as casper only look for a single filesystem.squashfs file - no workaround

7 - compression level of the filesystem.squashfs doesn't have lzma as the Ubuntu kernel and mksquashfs would need to be patched - unsupported/no workaround.

8 - livecd only works properly with linux-generic livecd kernel - if you make your own kernel you are on your own

    unsupported so please don't ask for help with this

9 - if it isn't in the normal Ubuntu repositories or requires a patch of an app that changes it from stock ubuntu apps it is completely unsupported so please don't ask me for help with these

10 - there are certain apps and libraries that Ubuntu doesn't have on their livecd's and for whatever reason they cause the livecd to fail if they are installed - no workaround

11 - if your customizations are not showing up on the livecd then it means you have not made the changes in the correct place. You must figure out what files need to be changed or where the global configuration of the settings are that you are trying to change. I only use KDE so I couldn't answer any gnome related questions anyway.

    you are on your own.

I have no intentions of maintaining a fork of casper or ubiquity or any other app so please don't ask me to change any of the above. I make remastersys which helps you remaster a base Ubuntu desktop live system and thats it.

These are not limitations of remastersys but rather the underlying tools that are used to remaster the livecd/run the livecd/install the livecd.

These may change in the future if Ubuntu changes them but for now they are the limitations and there are no workarounds.

Remastersys simply builds the livecd from the system you are running. If you have it setup correctly and nothing conflicts with Ubuntu's casper or ubiquity then it should build, run and install just fine.
Information About Dist Mode

The dist mode of remastersys is unsupported for the most part.

I have tested remastersys on stock installs of Ubuntu, Kubuntu and usually Xubuntu as well.

Normal i386 and amd64 versions so I know remastersys works on stock installs.

Most problems in dist mode are created by yourself due to customization or package choice.

These issues have nothing to do with remastersys. They conflict with Ubuntu's casper livecd boot tool and Ubuntu's ubiquity installer and those aren't going to be changed to suit your needs. If you want to make changes to them, you will need to fork those projects off on your own.

For more information, please visit http://bash.broxme.com
<h2>Contributor</h2>
<br >

BroxMe Technology <support@broxme.com>
<br >
BroxMe Developer Network <developer@broxme.com>
<br >
Fahim Islam Sabuj <fahim@broxme.com>
<br >

COMMENTS FROM REMASTERSYS' ORIGINAL AUTHOR:
<br >
(I cannot guarantee the authenticity of these comments toward basher scripts -sef)
