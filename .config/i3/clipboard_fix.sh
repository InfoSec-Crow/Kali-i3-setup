#!/bin/bash

pkill vmtoolsd 2> /dev/null
vmtoolsd -n vmusr &>/dev/null &
echo "Copying should now work again :)"
