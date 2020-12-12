# Zeroconf / Bonjour
[Zeroconf](https://en.wikipedia.org/wiki/Zero-configuration_networking) also called **Bonjour** (name of Apple implementation) or **Avahi** (name of Linux implementation), is a set of technologies that allow more easily communication between computers without configuration.

To be short:
- It makes able to reach the robot on your local network **without** having to know its IP address
- It makes able to connect the robot to your computer directly with an Ethernet wire **without using a router**, and without a DHCP server.

> **Info** Zeroconf is not mandatory on your computer to use Poppy robots, but it is strongly recommended, and the documentation will assume it is installed. Otherwise replace all *poppy.local* occurrences by the IP address of the robot given by your router.

## Installation

### Windows
You have to install **[Bonjour print services for Windows](https://support.apple.com/kb/DL999)** (yes, it is an Apple software).

If you already have installed an Apple Software like iTunes or QuickTime, Bonjour should be installed.

> **Warning** Times to times, even if Bonjour is already installed on your computer you can't connect directly to your Ergo Jr. To solve the issue, un-install and re-install Bonjour.


### On GNU/Linux based operating systems
On GNU/Linux, you have to install *avahi-daemon* (mDNS) and *avahi-autoipd* (IPv4LL), it may or may not be installed by default depending on your installation.

On Ubuntu/Debian, run
```bash
sudo apt install avahi-daemon avahi-autoipd
```

On Fedora / CentOS, run

```bash
sudo yum install avahi-daemon avahi-autoipd
```

To connect to your robot directly with an Ethernet wire, you need to select **local link only** on the IPv4 configuration of your Network manager.

### Mac OSX
Bonjour is already installed with OSX. Moreover, if you plan to connect your computer directly to the robot (without a router), use a Thunderbolt to Ethernet adapter rather than a USB to Ethernet

## Advanced information: What Zeroconf does for you
### Local domain name (mDNS)

Zeroconf client *publishes* a decentralized local domain name (mDNS) with the '.local' top level domain. It means that you can join any local local computer by its hostname with the '.local' suffix instead of its IP address.

With a zeroconf client, to ```ping``` a computer called (hostname) 'ergojr', you can simply do:
```
$ ping ergojr.local
64 bytes from 192.168.1.42: icmp_seq=0 ttl=54 time=3.14 ms
[...]
```
You no longer need to look for its IP address on your local network; you don't even need to understand what an IP address is.

It also work on your web browser. To open the website hosted on the robot computer called 'ergojr', you have to open: http://ergojr.local on your favorite web browser URL field.

### Link-local IPv4 addresses (IPv4LL)
Among other Zeroconf tools, there is an implementation of decentralized DHCP ([IPv4LL](https://en.wikipedia.org/wiki/Zero-configuration_networking#Link-local_IPv4_addresses)), which allow computers obtain an IP and connect each others **without** a DHCP server.

The auto-adressed IP is in the [APIPA](https://en.wikipedia.org/wiki/Link-local_address#IPv4) range, from 169.254.0.0 to 169.254.255.255.

This is why you may see thiese unusual IP addressses when connecting your robot to your computer. Whereas, in presence of a DHCP server, IP addresses of computers and robots are from 10.0.0.0 to 10.255.255.255 or 172.16.0.0 to 172.31.255.255 or, more frequently, 192.168.0.0 to 192.168.255.255. You might observe that, if you enable the internal hotspot of Poppy, addresses are from 10.0.0.0 to 10.255.255.255.

This way, it is possible to connect your robot directly to your computer with a single Ethernet cable because no intermediary device like a router or any DHCP server is needed to provide the IP addresses, they are self-assigned.


## Alternatives to find the IP address of a computer on your local network
If you cannot (or doesn't want to) install a zeroconf client on your personal computer, you can use one of the following methods to find the IP address of your robot.

* You can use [Fing](https://www.fingbox.com/download), famous for its [Android](https://play.google.com/store/apps/details?id=com.overlook.android.fing) and [iOS](https://itunes.apple.com/fr/app/fing-network-scanner/id430921107?mt=8) applications
* If you are connected in Wifi through a smartphone via its accept point feature (Android or iOS), most access points display a list of connected clients as well as their associated IP address 
* [Nmap](https://nmap.org/book/man-host-discovery.html) or arp(only GNU/Linux and MAC OSX) if you are not afraid of command line interfaces.
  ```
  nmap -sn 192.168.1.0/24
  arp -an | grep -i B8:27:EB
  ```
* You can also go to your router web interface (with its IP address on your web browser like http://192.168.0.1 or http://192.168.1.1 or http://192.168.0.254 or http://192.168.1.254), you should have a section of connected hosts.

<!-- TODO: talk about poppy-discover -->
