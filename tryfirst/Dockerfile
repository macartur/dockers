FROM kytos/base

RUN python3.6 -m pip install kytos==2018.1b2

EXPOSE 6633
EXPOSE 8181

ADD kytos-welcome.txt /tmp/kytos-welcome.txt
ADD init.sh /init.sh
CMD /bin/bash /init.sh
