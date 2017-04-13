# Zeroconf

[Zeroconf](https://en.wikipedia.org/wiki/Zero-configuration_networking) also called Bonjour (name of Apple implementation) is set of technologies that allow more easily communication between computers without configuration.

> **Info** Zeroconf is not mandatory on your computer to use Poppy robots, but we will assume it is installed. It is more convenient and readable for the documentation.

## Installation

* On Windows, you have to install *[Bonjour print services for Windows](https://support.apple.com/kb/DL999)* (yes, it is an Apple software).
* On GNU/Linux, you have to install *avahi-daemon* (mDNS) and *avahi-autoipd* (IPv4LL), it may or may not be installed by default depending on your installation. Run `sudo apt-get install avahi-daemon avahi-autoipd` on Debian/Ubuntu or `sudo yum install avahi-daemon avahi-autoipd` on Fedora.
* On Mac OSX it works out of the box.

You ready to follow your [installation path](README.md).

## What Zeroconf does for you

### Local domain name

Zeroconf client *publishes* a decentralised local domain name (mDNS) with the '.local' top level domain. It means that you can join any local local computer by its hostname with the '.local' suffix instead of its IP address.

With a zeroconf client, to ```ping``` a computer called (hostname) 'goldstine', you can simply do:

    $ ping goldstine.local
    64 bytes from 192.168.1.42: icmp_seq=0 ttl=54 time=3.14 ms
    [...]
    

You no longer need to look for its IP address on your local network; you don't even need to understand what an IP address is.

It also work on your web browser. To open the website hosted on the robot computer called 'goldstine', you have to open: http://goldstine.local on your favorite web browser URL field.

### Link-local IPv4 addresses

Among other Zeroconf tools, there is an implementation of decentralized DHCP ([IPv4LL](https://en.wikipedia.org/wiki/Zero-configuration_networking#Link-local_IPv4_addresses)), which allow computers obtain an IP and connect each others **without** a DHCP server.

The auto-adressed IP is in the [APIPA](https://en.wikipedia.org/wiki/Link-local_address#IPv4) range, from 169.254.0.0 to 169.254.255.255.

You can plug a robot to your computer **directly** on your computer with an Ethernet cable, **without** any router and connect it with its local domain name (hostname.local).

> **Warning** You will be able to use the local-link IPv4 address **only** if you installed your robots after end of May 2016. Previously *avahi-autoipd* packet was missing.

## Alternatives to find the IP address of a computer on your local network

If you cannot (or doesn't want to) install a zeroconf client on your personal computer, you can use one of the following methods to find the IP address of your robot.

* You can use [Fing](https://www.fingbox.com/download), famous for its [Android](https://play.google.com/store/apps/details?id=com.overlook.android.fing) and [iOS](https://itunes.apple.com/fr/app/fing-network-scanner/id430921107?mt=8) applications,
* [Nmap](https://nmap.org/book/man-host-discovery.html) (only GNU/Linux and MAC OSX) if you are not afraid of command line interfaces.
* You can also go to your router web interface (with its IP address on your web browser like http://192.168.0.1 or http://192.168.1.1 or http://192.168.0.254 or http://192.168.1.254), you should have a section of connected hosts.

<!-- TODO: talk about poppy-discover -->

<!-- 
## How zeroconf works (only for computer science culture)
> **Caution** This paragraph is not currently written. Your help is welcome to fulfill it !
-->