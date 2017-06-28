# deogracia-vagrant-gentoo-overlay
vagrant gentoo layman's overlay 

## Beware! 
I don't use Gentoo anymore. This repository is now unmaintained.

## setup

 - In ''/etc/layman/layman.cfg'', add ```https://raw.githubusercontent.com/deogracia/deogracia-vagrant-gentoo-overlay/master/repositories.xml``` in the overlays section
 - Then, run ```layman -f -a deogracia-vagrant```
 - Finally, answer "y" when it says that it's not an official overlay (yes, it is not an official one)
