#!/bin/sh

# logout and log back into the machine
sudo docker-machine scp -r -d ./install_nvidia.sh docknb4:~

# To make a file transfer run the following command (python code and zip file with)
cd ./automatic_text_scoring_using_NN/kaggle_hewlett/training_subsets
tar -zcvf archive-name.tar.gz .
cd /home/ricardo/Documents/Maestria/inv_ii
sudo docker-machine scp -r -d ./environments/Transformers_2.ipynb docknb4:~
sudo docker-machine scp -r -d /home/ricardo/Documents/Maestria/inv_ii/automatic_text_scoring_using_NN/kaggle_hewlett/training_subsets/archive-name.tar.gz docknb4:~

# To make tunneling for jupyter notebook
sudo docker-machine ssh docknb4 -L 0.0.0.0:8888:localhost:8888

