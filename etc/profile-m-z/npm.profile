# Firejail profile for npm
# Description: The Node.js Package Manager
# This file is overwritten after every install/update

# Persistent local customizations
include npm.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix
blacklist ${RUNUSER}

noblacklist ${HOME}/.npm
noblacklist ${HOME}/.npmrc


noblacklist ${PATH}/bash
noblacklist ${PATH}/dash
noblacklist ${PATH}/sh

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

caps.drop all
ipc-namespace
machine-id
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
seccomp.block-secondary
shell none

disable-mnt
private-dev
private-etc alternatives,ca-certificates,crypto-policies,host.conf,hostname,hosts,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,locale,locale.alias,locale.conf,localtime,mime.types,nsswitch.conf,pki,protocols,resolv.conf,rpc,services,ssl,xdg
private-tmp

dbus-user none
dbus-system none
