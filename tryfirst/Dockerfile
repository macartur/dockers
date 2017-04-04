FROM ubuntu:16.10

ARG KYTOSDIR
ENV KYTOSDIR /usr/local/src/kytos

# Install dependencies
RUN apt-get update && apt-get install -y \
    git vim python3.6 python3-setuptools libpython3.6 \
    curl iproute2 iputils-ping mininet net-tools tcpdump x11-xserver-utils \
    xterm \
    && rm -rf /var/lib/apt/lists/* \
    && mv /bin/ping /sbin/ping \
    && mv /bin/ping6 /sbin/ping6 \
    && mv /usr/sbin/tcpdump /usr/bin/tcpdump

# Install kytos projects
RUN mkdir $KYTOSDIR
RUN git clone --depth 1 https://github.com/kytos/python-openflow.git ${KYTOSDIR}/python-openflow
RUN git clone --depth 1 https://github.com/kytos/kytos-napps.git ${KYTOSDIR}/kytos-napps
RUN git clone --depth 1 https://github.com/kytos/kytos-utils.git ${KYTOSDIR}/kytos-utils
RUN git clone --depth 1 https://github.com/kytos/kytos.git ${KYTOSDIR}/kytos

ENV LANG C.UTF-8

# Install kytos-utils
RUN cd ${KYTOSDIR}/kytos-utils && python3.6 setup.py install

# Install python-openflow
RUN cd ${KYTOSDIR}/python-openflow && python3.6 setup.py install

# Install kytos
RUN cd ${KYTOSDIR}/kytos && python3.6 setup.py install

# Install kytos-napps
# RUN cd ${KYTOSDIR}/python-napps && python3.6 setup.py install

CMD service openvswitch-switch start &&\
    ovs-vsctl set-manager ptcp:6640 && \
    /bin/bash
