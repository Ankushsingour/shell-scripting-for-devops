#!/bin/bash
#
#
<< task
   Deploy a Django app
   and handle the code for error
task


code_clone()
{
	echo "Cloing the Django app...."
	git clone  https://github.com/LondheShubham153/django-notes-app.git

}

install_requirments()
{
   echo "installing dependencies"
   sudo apt-get install docker.io nginx -y
}

required_restarts()
{  
  echo "system restarting"
  sudo systemctl enable docker
  sudo systemctl enable nginx
}

deploy()
{ 
	echo "deploing"
    sudo docker build -t notes-app .
    sudo docker run -d -p 8000:8000 notes-app:latest 
}


echo "DEPLOYMENT STARTED"

if ! code_clone; then
	echo "the code directory already exists"
	cd django-notes-app
fi	

install_requirments
required_restarts
deploy

echo " DEPLOYMENT END "
