#!/bin/bash

setxkbmap -query | grep layout | cut -d":" -f2 | tr -d '[:space:]'
