# install conda container
#FROM debian:bookworm
FROM debian:bookworm

RUN apt-get update; apt-get install -y wget bzip2 curl git vim python3 python3-pip python3 \
    libgl1 && apt-get clean 

# install miniconda in /opt/conda directory using the correct architecture 
# which could be aarch64 or x86_64

RUN if [ $(dpkg --print-architecture) = "arm64" ]; then \
        ARCH="aarch64"; \
    else \
        ARCH="x86_64"; \
    fi \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-${ARCH}.sh -O /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b -p /opt/conda \
    && rm /tmp/miniconda.sh

RUN /opt/conda/bin/conda init bash
RUN bash --login -c "conda create -n cadquery -y python=3.12"
RUN bash --login -c "conda activate cadquery && conda install -y -c conda-forge ocp cadquery pyzmq psutil"
RUN bash --login -c "conda activate cadquery && pip install jupyter-cadquery"

# Add poetry:
RUN bash --login -c "conda activate cadquery && pip install poetry"

