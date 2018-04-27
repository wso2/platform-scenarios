FROM mysql:5.7.19

ARG USER=mysql
ARG USER_ID=1000060001

RUN chgrp -R 0 /var/lib/mysql \
	&& chmod -R g=u /var/lib/mysql
    
USER ${USER_ID}