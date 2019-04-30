Master of Science in Computer Science Thesis.

Latex and python code for my computer science master thesis. My work is based in Google Brain's BERT `https://github.com/google-research/bert`.

It is better to use Google`s Collaboratory to provide a GPU device and avoid installing necessary software like the NVIDIA drivers and CUDA.

If you decide to use a AWS instance with `docker machine` a scripts are provided to launch the proper instance.

The scripts provided are the following:
1. `create_docker_machine.sh`, to be run in the local machine to set up AWS instance with Cuda and GPU.
2. `send_file.sh` to send the data sets and make tunneling for jupyter in the machine.
3. From the received files, run 'install_nvidia.sh' to install nvidia in the AWS instance.

Now you can run any of the python files in the repo in your aws instance.

This is an alternative way, although I prefer using Collaboratory.

