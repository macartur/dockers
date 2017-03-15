FROM ubuntu:16.10
ARG KYTOSDIR
ENV KYTOSDIR /usr/local/src/kytos
RUN apt-get update
RUN apt-get install -y git vim mininet python3.6 libpython3.6 python3-setuptools
RUN mkdir $KYTOSDIR
RUN git clone --depth 1 https://github.com/kytos/python-openflow.git ${KYTOSDIR}/python-openflow
RUN git clone --depth 1 https://github.com/kytos/kytos-napps.git ${KYTOSDIR}/kytos-napps
RUN git clone --depth 1 https://github.com/kytos/kytos-utils.git ${KYTOSDIR}/kytos-utils
RUN git clone --depth 1 https://github.com/kytos/kytos.git ${KYTOSDIR}/kytos

# Install kytos-utils
RUN cd ${KYTOSDIR}/kytos-utils && python3.6 setup.py install

# Install python-openflow
RUN cd ${KYTOSDIR}/python-openflow && python3.6 setup.py install

# Install kytos
#RUN cd ${KYTOSDIR}/kytos && python3.6 setup.py install

# Install kytos-napps
#RUN cd ${KYTOSDIR}/python-openflow && python3.6 setup.py install
