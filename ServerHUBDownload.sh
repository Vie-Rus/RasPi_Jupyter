#!/bin/bash
#DOWNLOAD FIRST BEFORE HUB OR ADMIN

echo "Press y when asked y/n"
sleep 1

clear
echo "Installing Jupter Hub for Raspberry Pi"
sleep 2
#install pip through python3
echo "Installing Python and Pip..."
sleep 2
sudo apt-get update
sudo apt-get install python3-pip
sudo pip3 install --upgrade pip
sudo apt-get install libatlas-base-dev
pip3 install numpy
sleep 2
clear

#Proxy
echo "Installing Proxy..."
sleep 2
sudo apt-get install npm
sudo npm install -g configurable-http-proxy
sleep 2
clear

#install hub
echo "Installing Jupyter Hub and Lab and config file..."
sleep 2
sudo -H pip3 install notebook jupyterhub
jupyterhub --generate-config
sudo mv jupyterhub_config.py /root

sudo -H pip3 install jupyterlab
sudo jupyter serverextension enable --py jupyterlab --system
sleep 2
clear




#Summary
echo "Woa, A lot just got downloaded. Let me give you summary of just happened: "
echo "Python and pip have been installed along with pip libatlas-bas-dev and numpy."
echo "We had to install a Proxy with npm and made it http-proxy config based."
echo "Then Jupyter notebook, Jupyterhub, Jupyterlab, and the server extension have all been installed or enabled."
echo "Make sure the file Jupyterhub.service is put in the correct path : file system /lib/systemd/system/<jupyterhub.service> "
echo "The jupterhub config file has also been created and the path is /root/jupyterhub_config. You'll need to go into the file, and uncomment somethings."
echo "DO NOT MOVE THE CONFIG FILE! If you do you'll have to edit the .service file and add the path to the config file."

echo "Find, uncomment and edit c.JupyterHub.bind_url to make it equal to 'http://:8888'  so it's:  c.JupyterHub.bind_url = 'http://:8888' "

echo "Next you'll need to run the ServerRun program. It will activate the server and you'll need to go to terminal file > new tab and type the following:"
echo "$ jupyter notebook --ip 0.0.0.0 --port 8888"
echo "From there you'll either get sent to a web browser with the juypter server or you can type in web browser:"
echo "http://<your personal pi ip address>:8888/tree"

echo "for other devices connect to your pi: using putty > run the repeat the <jupyter notebook --ip 0.0.0.0 --port 8888> command portion"