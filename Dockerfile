FROM        ubuntu:14.04
RUN         apt-get update
RUN         apt-get -y install redis-server wget python python-dev python-setuptools gcc g++
RUN			wget https://github.com/dsociative/doom/archive/staging.tar.gz
RUN			tar xvf staging.tar.gz

RUN			easy_install virtualenv
RUN			virtualenv doom_env
RUN			doom_env/bin/python doom-staging/setup.py install
CMD			["doom_env/bin/python -m doom.example.hello_talker"]