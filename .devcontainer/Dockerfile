# install conda container
FROM debian:bookworm

RUN apt-get update; apt-get install -y wget bzip2 curl git vim python3 python3-pip python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b -p /opt/conda \
    && rm /tmp/miniconda.sh

RUN /opt/conda/bin/conda install -y python=3.12
RUN /opt/conda/bin/conda install -y -c conda-forge ocp