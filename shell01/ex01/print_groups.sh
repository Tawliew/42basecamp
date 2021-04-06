#!/bin/sh
groups $FT_USER | sed 's/ /,/g' | awk '{print}' ORS=''