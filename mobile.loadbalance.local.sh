#! /bin/bash


echo"enter IP address of localhost"
read localhost

#sudo apt-get update
#sudo apt-get install haproxy

echo 'ENABLED=1' >/etc/default/haproxy

cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.real.cfg


echo"
    frontend http_front
        bind *:80
        stats uri /haproxy?stats
        default_backend http_rear

    backend http_rear
        balance    roundrobin
        server      $localhost:80 check
        server      $localhost:80 check
        " >> /etc/haproxy/haproxy.cfg

echo "
     listen stats
        bind *:8800
        stats enable
        stats uri /
        stats realm haproxy\ Statistics
        stats auth mobile.loadbalance.local:12345
        " >>  /etc/haproxy/haproxy.cfg

systemctl restart haproxy
