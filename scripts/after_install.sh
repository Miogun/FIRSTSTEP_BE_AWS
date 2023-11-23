#!/bin/bash
cd /home/ubuntu/FIRSTSTEP_BE_AWS

echo ">>> sudo apt-get install python3-pip ================="
sudo add-apt-repository universe 
sudo apt-get update 
sudo apt-get install python3-pip
echo ">>> pip flask ================="
pip install flask

echo ">>> pip install requirements.txt ================="
pip install -r requirements.txt

echo ">>>remove template files =============="
rm -rf appspec.yml requirements.txt

echo ">>> change owner to ubuntu ================"
chown -R ubuntu /home/ubuntu/FIRSTSTEP_BE_AWS

echo ">>> run app ======================"
flask run --host=0.0.0.0