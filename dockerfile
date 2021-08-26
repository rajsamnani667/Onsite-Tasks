FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean


ADD ./DesktopServer.sh /home/temp/dockerbuild/DesktopServer.sh
ADD ./MobileServer.sh /home/temp/dockerbuild/MobileServer.sh

RUN chmod +x /home/temp/dockerbuild/DesktopServer.sh
RUN chmod +x /home/temp/dockerbuild/MobileServer.sh

RUN bash ["/home/temp/dockerbuild/DesktopServer.sh"]
RUN bash ["/home/temp/dockerbuild/MobileServer.sh"]

EXPOSE 80 
CMD ["apache2ctl" , "-D" , "FOREGROUND"]








