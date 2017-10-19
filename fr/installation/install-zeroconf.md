# Zeroconf / Bonjour

[Zeroconf](https://en.wikipedia.org/wiki/Zero-configuration_networking) également appelé Bonjour (nom donné par Apple) est un ensemble de technologies qui facilite la communication entre les ordinateurs sans configuration préalable.

> **Info** Zeroconf n'est pas obligatoire sur votre ordinateur pour faire fonctionner les robots Poppy, mais nous allons supposer qu'il est installé. C'est plus commode et plus lisible pour la documentation.

## Installation

### Windows

Vous devez installer les**[Services d'impression Bonjour pour Windows](https://support.apple.com/kb/DL999)** (Oui, c'est un logiciel Apple).

Si vous avez déjà installé un logiciel de la marque Apple comme iTunes ou QuickTime, Bonjour doit déjà être installé.

> **Attention** Parfois, même si Bonjour est déjà installé sur votre ordinateur, vous ne pouvez pas vous connecter directement à votre Ergo Jr. Pour résoudre le problème, désinstallez et réinstallez Bonjour.

### Sur les systèmes GNU/Linux

Sur GNU/Linux, vous devez installer *avahi-daemon* (mDNS) et *avahi-autoipd* (IPv4LL), il peut ou ne peut pas être installé par défaut en fonction de votre installation.

Sous Ubuntu/Debian, exécutez

```bash
sudo apt-get install avahi-daemon avahi-autoipd
```

Sous Fedora / CentOS, exécutez

```bash
sudo yum install avahi-daemon avahi-autoipd
```

### Sous MAC OSX

Bonjour est déjà installé avec OSX. De plus, si vous prévoyez de connecter votre ordinateur directement au robot (sans routeur), utilisez un adaptateur Thunderbolt vers Ethernet plutôt qu'un adaptateur USB vers Ethernet

Vous êtes prêt à continuer votre [parcours d’installation](README.md).

## Ce que Zeroconf fait pour vous

### Nom de domaine local (mDNS)

Zeroconf client *publishes* a decentralized local domain name (mDNS) with the '.local' top level domain. It means that you can join any local local computer by its hostname with the '.local' suffix instead of its IP address.

With a zeroconf client, to ```ping``` a computer called (hostname) 'ergojr', you can simply do:

    $ ping ergojr.local
    64 bytes from 192.168.1.42: icmp_seq=0 ttl=54 time=3.14 ms
    [...]
    

You no longer need to look for its IP address on your local network; you don't even need to understand what an IP address is.

It also work on your web browser. To open the website hosted on the robot computer called 'ergojr', you have to open: http://ergojr.local on your favorite web browser URL field.

### Link-local IPv4 addresses (IPv4LL)

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