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
  "iso_url": "http://mirror.sov.uk.goscomb.net/centos/7.2.1511/isos/x86_64/CentOS-7-x86_64-Minimal-1511.iso",
  "iso_checksum": "f90e4d28fa377669b2db16cbcb451fcb9a89d2460e3645993e30e137ac37d284",
  "iso_checksum_type": "sha256",
  "guest_additions_path": "VBoxGuestAdditions.iso",
  "redhat_release": "7.2"
}

```
Example var file for CentOS 6.x:

```json
{
  "iso_url": "http://mirror.sov.uk.goscomb.net/centos/6.8/isos/x86_64/CentOS-6.8-x86_64-minimal.iso",
  "iso_checksum": "ec49c297d484b9da0787e5944edc38f7c70f21c0f6a60178d8e9a8926d1949f4",
  "iso_checksum_type": "sha256",
  "guest_additions_path": "VBoxGuestAdditions.iso",
  "redhat_release": "6.8"
}
```

Running Packer
--------------

`$ packer build -var-file=vars-example.json vagrant-centos.json` 
