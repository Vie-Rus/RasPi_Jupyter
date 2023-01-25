# RasPi_Jupyter

1) ServerHubDownload.sh
    # DOWNLOAD FIRST BEFORE HUB OR ADMIN
    Python and pip have been installed along with pip libatlas-bas-dev and numpy.
    Install a Proxy with npm and made it http-proxy config based.
    Then Jupyter notebook, Jupyterhub, Jupyterlab, and the server extension have all been installed or enabled.
    **Make sure the file Jupyterhub.service is put in the correct path on the raspberry pi : file system /lib/systemd/system/<jupyterhub.service>**
    The jupterhub config file has also been created and the path is /root/jupyterhub_config. **You'll need to go into the file, and uncomment somethings.**
    DO NOT MOVE THE CONFIG FILE! If you do you'll have to edit the .service file and add the path to the config file.
    Find, uncomment and edit c.JupyterHub.bind_url to make it equal to 'http://:8888'  so it's:  c.JupyterHub.bind_url = 'http://:8888' 
    
2) ServerRun.sh
    Next you'll need to run the ServerRun program. It will activate the server and you'll need to go to terminal file > new tab and type the following:
        $ jupyter notebook --ip 0.0.0.0 --port 8888
    From there you'll either get sent to a web browser with the juypter server or you can type in web browser:
        http://<your personal pi ip address>:8888/tree
    For other devices connect to your pi: using putty > run the repeat the <jupyter notebook --ip 0.0.0.0 --port 8888> command portion


3) ServerAdmin.sh 
    ***TBU***
