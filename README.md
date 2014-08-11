mint_or_ubuntu_lsb
==================

This is a very simple script for Ubuntu or Linux Mint LSB release.

For example, on both an Ubuntu 14.04 system, and a Linux Mint 17 system, I
needed:

```
% ./mint_or_ubuntu_lsb.sh
trusty
```

Purpose
-------

This project came around because I needed to script a puppet PPA install. In
Ubuntu this can be done with:

```
wget http://apt.puppetlabs.com/puppetlabs-release-`lsb_release -sc`.deb
dpkg -i puppetlabs-release-`lsb_release -sc`.deb
apt-get update
```

Unfortunately this doesn't work as designed in Mint 17, as there is no
"quana" PPA for puppet.

```
# in Ubuntu 14.04
% lsb_release -sc
trusty

# in Mint 17
% lsb_release -sc
quana
```

Now, I should have no problems:

```
# in Ubuntu 14.04
% ./mint_or_ubuntu_lsb.sh
trusty

# in Mint 17
% ./mint_or_ubuntu_lsb.sh
trusty
```

