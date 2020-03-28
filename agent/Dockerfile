FROM jetbrains/teamcity-minimal-agent
SHELL ["/bin/bash", "-c"]
RUN apt update
RUN apt install -y libusb-1.0-0 git wget libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache libffi-dev libssl-dev
RUN python -m pip install --upgrade virtualenv==16.7.9
RUN mkdir ~/esp && cd ~/esp && git clone -b v4.0 --recursive https://github.com/espressif/esp-idf.git
RUN cd ~/esp/esp-idf && ./install.sh
RUN echo ". $HOME/esp/esp-idf/export.sh" >> ~/.profile
COPY ./build.sh /tmp/build.sh
RUN source $HOME/esp/esp-idf/export.sh
#CMD ["bash", "/root/build.sh"]

# TODO: replace python with python3
# teamcity clones repo locally /tmp/3719823791823891273 
# git checkout 3719823791823891273
# docker run --rm -v /tmp/3719823791823891273:/code
#/tmp/3719823791823891273/build/blabla.bin