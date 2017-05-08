FROM kytos/base

# Install kytos-utils
RUN python3.6 -m pip install kytos

#RUN cd ${KYTOSDIR}/kytos-utils && python3.6 setup.py install

# Install python-openflow
#RUN cd ${KYTOSDIR}/python-openflow && python3.6 setup.py install

# Install kytos
#RUN cd ${KYTOSDIR}/kytos && python3.6 setup.py install

# Install kytos-napps
# RUN cd ${KYTOSDIR}/python-napps && python3.6 setup.py install

EXPOSE 6633

ADD kytos-welcome.txt /tmp/kytos-welcome.txt
ADD init.sh /init.sh
CMD /bin/bash /init.sh
