#!/bin/bash

#THIS FILE IS NOT DONE YET

sudo addgroup jupyter_admin
sudo usermod -aG jupter_admin <name>

#In Jupterhub.service add:
    #c.PAMAuthenticator.admin_groups = {'jupyter_admin'}

