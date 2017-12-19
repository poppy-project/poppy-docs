# Zeroconf / Bonjour

[Zeroconf](https://en.wikipedia.org/wiki/Zero-configuration_networking) also called Bonjour (name of Apple implementation) is set of technologies that allow more easily communication between computers without configuration. To be short: - It makes able to reach the robot on your local network **without** having to know its IP address - It makes able to connect the robot to your computer directly with an Ethernet wire **without using a router**, and without a DHCP server.

> **Info** Zeroconf is not mandatory on your computer to use Poppy robots, it is strongly recommended, and the documentation will assume it is installed. Otherwise replace all *poppy.local* occurrences by the IP address of the robot given by your router.

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

To connect to your robot directly with an Ethernet wire, you need to select **local link only** on the IPv4 configuration of your Network manager.

### Sous MAC OSX

Bonjour is already installed with OSX. Moreover, if you plan to connect your computer directly to the robot (without a router), use a Thunderbolt to Ethernet adapter rather than a USB to Ethernet

You ready to follow your [installation path](README.md).

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

> **Attention** Vous serez en mesure d'utiliser l'adresse IPv4 de liaison locale **seulement** si vous avez installé vos robots après la fin du mois de mai 2016. Précédemment le paquet *avahi-autoipd* était manquant.

## Alternatives pour trouver l'adresse IP d'un ordinateur sur votre réseau local

If you cannot (or doesn't want to) install a zeroconf client on your personal computer, you can use one of the following methods to find the IP address of your robot.

* Vous pouvez utiliser [Fing](https://www.fingbox.com/download), célèbre pour ses applications [Android](https://play.google.com/store/apps/details?id=com.overlook.android.fing) et [iOS](https://itunes.apple.com/fr/app/fing-network-scanner/id430921107?mt=8),
* [Nmap](https://nmap.org/book/man-host-discovery.html) or arp(only GNU/Linux and MAC OSX) if you are not afraid of command line interfaces. 
        nmap -sn 192.168.1.0/24
        arp -an | grep -i B8:27:EB

* Vous pouvez également accéder à l'interface Web de votre routeur (avec l'adresse IP sur votre navigateur Web comme http://192.168.0.1 ou http://192.168.1.1 ou http://192.168.0.254 ou encore http://192.168.1.254), vous devriez voir une section d'hôtes connectés.

<!-- TODO: talk about poppy-discover -->