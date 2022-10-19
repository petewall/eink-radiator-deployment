# eInk Radiator Deployment

This repository contains the deployment instructions for Raspberry Pi Zero W, which is what I'm using for hardware.

## Install the OS

* Flash an SD card with Raspberry Pi OS Lite (32-bit)
  * Use the [Raspberry Pi Imager](https://www.raspberrypi.com/software/)
  * Before writing, click the gear icon and:
  * Set the hostname
  * Enable SSH
  * Set the username and password
* On first boot:
  * Update packages:

```bash
# raspi-config and enable SPI

sudo apt update
sudo apt upgrade --yes --fix-missing
sudo apt autoremove
sudo apt install --yes libjpeg-dev python3-pip 
```

  * TBD: Install [vendir](https://carvel.dev/vendir/):

```bash
# Need to build arm 32-bit binaries for ytt and vendir and scp them over
```

## Deploy the software

```bash
git clone https://github.com/petewall/eink-radiator-deployment.git
make start
```
