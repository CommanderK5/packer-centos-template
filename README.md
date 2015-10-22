Packer Centos template
==============

Packer template to make VirtualBox images.

Notes
-----
CentOS 64-bit VM, 10G disk, EPEL repo, Puppet 4, no SELinux, no firewall,

Packer version: 0.8.6

Usage
=====

Installing Packer
-----------------

Download the latest packer from http://www.packer.io/downloads.html

Prepare var file
----------------------

`cp vars.json.template vars-example.json`

Example var file for CentOS 7.x:

```json
{
  "iso_url": "CentOS-7-x86_64-Minimal-1503-01.iso",
  "iso_checksum": "7cf1ac8da13f54d6be41e3ccf228dc5bb35792f515642755ff4780d5714d4278",
  "iso_checksum_type": "sha256",
  "guest_additions_path": "VBoxGuestAdditions.iso",
  "redhat_release": "7.1"
}
```
Example var file for CentOS 6.x:

```json
{
  "iso_url": "CentOS-6.7-x86_64-minimal.iso",
  "iso_checksum": "9d3fec5897be6b3fed4d3dda80b8fa7bb62c616bbfd4bdcd27295ca9b764f498",
  "iso_checksum_type": "sha256",
  "guest_additions_path": "VBoxGuestAdditions.iso",
  "redhat_release": "6.7"
}
```

Running Packer
--------------

`$ packer build -var-file=vars-example.json vagrant-centos.json` 
