#!/bin/bash

id=`xinput list | grep "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1`
natural_scrolling_id=`xinput list-props $id | \
											grep "Natural Scrolling Enabled (" \
												| cut -d'(' -f2 | cut -d')' -f1`


xinput --set-prop $id $natural_scrolling_id 1
