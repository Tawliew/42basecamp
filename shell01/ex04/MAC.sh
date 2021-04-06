#!/bin/sh
ifconfig | grep -i ethernet | awk '{print $2}'