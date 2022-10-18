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
// Need to build arm 32-bit binary and scp it
```

## Deploy the software

```bash
wget https://raw.githubusercontent.com/petewall/eink-radiator-deployment/main/vendir.yml
```




Todo:

1. Add instructions on getting the 32-bit version of vendir
2. Make vendir.yml templated (based on components and architecture)
2. Make a script or makefile that:
  1. renders the vendir template
  2. pulls the stuff with vendir
  3. sets chmod a+x
  4. builds the eink-radiator config file
  5. Prints instructions on how to start
