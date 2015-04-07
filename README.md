# Overview

This is a demonstrative Chef repository to manage Docker environments.

## Prerequisites

* Chef-DK: https://downloads.chef.io/chef-dk/
* Vagrant: https://www.vagrantup.com/downloads.html
* Virtualbox: https://www.virtualbox.org/wiki/Downloads

## Quickstart

Enter the main cookbook folder:

```
cd cookbooks/docker-server
```

Converge with vagrant:

```
vagrant up --provision
```

or with kitchen:

```
kitchen converge
```

## Provisioning

Once you are ready to provision a real machine, add the SSH node details to ssh-config
and then use the provided fabric script:

```
fab -H nodename bootstrap --set chef_environment=default
```

For subsequent provision, use provision instead of bootstrap:

```
fab -H nodename provision --set chef_environment=default
```
