~~~
docker build -t dom/jbase jmeter-base/
docker build -t dom/jmaster jmeter-master/
docker build -t dom/jmaster jmeter-master/
docker build -t dom/jslave jmeter-server/
docker images
docker run -dit --name slave01 dom/jslave /bin/bash
docker run -dit --name slave02 dom/jslave /bin/bash
docker run -dit --name slave03 dom/jslave /bin/bash
docker run -dit --name master dom/jmaster /bin/bash
~~~
