# Zeroconf / Bonjour

**Zeroconf**, aussi appelé **Bonjour** ou encore **Avahi** selon le nom des implémentations Apple et Linux, est une technologie permettant à plusieurs ordinateurs sur un même réseau de dialoguer facilement. En quelques mots :

* Zeroconf vous permet d'accéder à votre Poppy sous le nom `poppy.local` sans connaître au préalable son adresse IP
* Zeroconf vous permet de connecter via un cable Ethernet directement votre robot à votre ordinateur sans nécessiter de routeur ou box intermédiaire, et sans nécessiter de serveur DHCP

> **Info** Zeroconf n'est pas obligatoire pour utiliser les robots Poppy, mais il est fortement recommandé car il simplifie grandement leur utilisation. La documentation suppose toujours que Zeroconf est installé. Dans le cas contraire votre ordinateur ne peut pas connaître `poppy.local` et vous devrez remplacer le terme `poppy.local` indiqué dans la documentation par l'adresse IP du robot : celle-ci peut être plus ou moins simple à trouver selon votre type de connexion (wifi, ethernet avec routeur, sans routeur, point d'accès, etc), sans compter que si un serveur DHCP se trouve sur le réseau alors cette adresse IP peut changer d'un jour à l'autre.

## Installation
### Windows

Vous devez installer les **[Services d'impression Bonjour pour Windows](https://support.apple.com/kb/DL999)** (Oui, c'est un logiciel Apple). Puis n'oubliez pas de redémarrer Windows avant de vous connecter à votre robot.

Si vous avez déjà installé un logiciel de la marque Apple comme iTunes ou QuickTime, Bonjour doit déjà être installé.

> **Attention** Parfois, même si Bonjour est déjà installé sur votre ordinateur, vous ne pouvez pas vous connecter directement à votre Ergo Jr. Pour résoudre le problème, désinstallez et réinstallez Bonjour.

### Sur les systèmes GNU/Linux

Sur GNU/Linux, vous devez installer *avahi-daemon* (mDNS) et *avahi-autoipd* (IPv4LL), il peut ou ne peut pas être installé par défaut en fonction de votre installation.

Sous Ubuntu/Debian, exécutez

```bash
sudo apt install avahi-daemon avahi-autoipd
```

Sous Fedora / CentOS, exécutez

```bash
sudo yum install avahi-daemon avahi-autoipd
```

**Connexion directe** : SI vous souhaitez connecter directement votre robot à votre ordinateur au moyen d'un unique câble Ethernet, dans ce cas vous devez ouvrir le gestionnaire réseau (Network Manager) généralement à proximité de l'horloge de votre bureau, puis activer le **Lien local seulement**.

### Sous MAC OSX

Bonjour est préinstallé sur OSX. 

**Connexion directe** : Certains ordinateurs OSX fonctionnent mieux avec un adaptateur Thuderbolt-vers-Ethernet plutôt que USB-vers-Ethernet.

## Informations avancées : Ce que Zeroconf fait pour vous
### Nom de domaine local (mDNS)

Le client Zeroconf *publishe* un nom de nomaine décentralisé (mDNS) avec le domaine de premier niveau '.local'. Cela signifie que vous pouvez joindre n'importe quel ordinateur du réseau local à partir de son nom d'hôte en ajoutant `.local` à la fin, cela remplace l'adresse IP qui elle, n'est ni facile à retenir et peut changer d'un jour à l'autre. 
  
C'est pourquoi la documentation de Poppy vous demande de taper `http://poppy.local` dans votre navigateur, il s'agit simplement de charger la page Web fournie par la Raspberry Pi du robot lui-même.

### Adresses IPv4 en lien local (IPv4LL)
Zeroconf possède également un fonctionnement de serveur DHCP décentralisé IPv4LL, qui permet à de ordinateurs sur un même réseau de s'assigner lui-même une adresse IP sans nécessiter de serveur DHCP central, habituellement fourni par le biais d'un routeur Internet ou d'une box (Livebox, etc).

Les adresses IP auto-assignées sont dans l'intervalle APIPA, entre 169.254.0.0 et 169.254.255.255. C'est pourquoi vous trouverez parfois ces inhabituelles adresses IP pour votre robot ou votre ordinateur. Tandis que lorsqu'un serveur DHCP est présent, les adresses IP des machines sont dans les intervalles 10.0.0.0 à 10.255.255.255 ou bien 172.16.0.0 à 172.31.255.255 ou bien, le plus fréquent, 192.168.0.0 à 192.168.255.255. Vous pouvez observer que, si vous activez le hotspot Wifi interne à Poppy, les adresses vont de 10.0.0.0 à 10.255.255.

Ainsi, il est possible de connecter directement votre ordinateur à votre robot via un unique câble Ethernet puisqu'il n'est pas nécessaire d'avoir un appareil intermédiaire tel qu'un routeur ou qu'une box pour fournir les adresses IP puisqu'elles sont auto-assignées.

## Alternatives pour trouver l'adresse IP d'un ordinateur sur votre réseau local

Si vous ne pouvez pas utiliser Zeroconf ou qu'il ne fonctionne pas et que vous avez besoin de trouver la bonne adresse IP de votre robot, essayez les méthodes suivantes.

* Vous pouvez utiliser [Fing](https://www.fingbox.com/download), célèbre pour ses applications [Android](https://play.google.com/store/apps/details?id=com.overlook.android.fing) et [iOS](https://itunes.apple.com/fr/app/fing-network-scanner/id430921107?mt=8)
* Si vous êtes connecté en Wifi à un point d'accès mobile (sur un smartphone Android ou iOS par exemple), la majorité des points d'accès vous affichent directement la liste des clients connectés ainsi que leur adresse IP
* [Nmap](https://nmap.org/book/man-host-discovery.html) ou arp (seulement sur GNU/Linux et OSX) en ligne de commande. 
        nmap -sn 192.168.1.0/24
        arp -an | grep -i B8:27:EB
* Si un routeur ou une box se trouve sur votre réseau, vous povuez également accéder à son interface Web de gestion, la procédure dépend fortement de votre modèle de routeur.

<!-- TODO: talk about poppy-discover -->