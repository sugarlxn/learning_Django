#!/bin/bash
# run image: lxn1234/my_django:1.0 
sudo docker run -it --network=host --name=my_djingo -v /home/lxn/learning_Django:/root/learning_Django lxn1234/my_django:1.0 /bin/bash