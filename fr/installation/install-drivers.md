# Installer les pilotes

> **Mise en garde** Ce chapitre est destiné aux personnes qui veulent contrôler un robot Poppy **sans** employer une carte embarquée (Raspberry Pi ou Odroid). **C’est un cas particulier pour les utilisateurs avancés.**

Si vous souhaitez contrôler des robots tangibles directement depuis votre ordinateur **sans** un Raspberry Pi ou un Odroid et que vous utilisez un ordinateur avec Windows (vs GNU/Linux ou MAC OSX), vous devrez peut-être installer manuellement les pilotes pour le USB2AX ou le USB2Dynamixel.

## Si vous utilisez un [USB2AX](http://www.xevelabs.com/doku.php?id=product:usb2ax:usb2ax)

Si le USB2AX n’est pas reconnu immédiatement (sa LED reste rouge après avoir été branché) sur votre ordinateur, vous devrez probablement installer manuellement ses pilotes. Le processus d’installation et les fichiers à télécharger se trouvent sur la [documentation de USB2AX](http://www.xevelabs.com/doku.php?id=product:usb2ax:quickstart). Vous n'avez pas besoin de pilotes pour GNU/Linux ou MAC OSX, mais notez qu’il ne fonctionne pas très bien avec MAC OSX.

Si vous souhaitez commander des moteurs XL-320 (protocole servomoteurs Dynamixel v2) à partir d’une USB2AX, vous devrez peut-être mettre à jour le firmware à la version 04 de la USB2AX.

## Si vous utilisez un [USB2Dynamixel](http://support.robotis.com/en/product/auxdevice/interface/usb2dxl_manual.htm)

Vous devez installer les pilotes FTDI sur votre ordinateur. Vous devez baisser la « valeur de latence du Timer » de 16ms à 1ms (valeur minimum autorisée) comme expliqué dans la [documentation de FTDI](http://www.ftdichip.com/Support/Knowledgebase/index.html?settingacustomdefaultlaten.htm) pour éviter que les appels pypot fassent un timeout.