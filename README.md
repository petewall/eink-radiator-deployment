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
sudo apt update
sudo apt upgrade --yes --fix-missing
sudo apt autoremove
```

  * TBD: Install [vendir](https://carvel.dev/vendir/):

```bash
# Need to build arm 32-bit binary and scp it
```

## Deploy the software

```bash
git clone https://github.com/petewall/eink-radiator-deployment.git
make start
```
