# Create two docker volumes for adguard work and conf data
docker volume create agwork
docker volume create agconf

# Create a new macvlan network if you need this to run in a dedicated internal IP address
# In this example, the IP is set to 192.168.1.150
sudo docker network create -d macvlan -o parent=eth0 --subnet=192.168.1.0/24 --gateway=192.168.1.1 --ip-range=192.168.1.150/32 mac_vlan

# Create the adguard docker container
docker run --name adguard -v agwork:/opt/adguardhome/work -v agconf:/opt/adguardhome/conf -p 53:53/tcp -p 53:53/udp -p 67:67/udp -p 68:68/tcp -p 68:68/udp -p 80:80/tcp -p 443:443/tcp -p 853:853/tcp -p 3000:3000/tcp -d adguard/adguardhome

# Once the container is created, go to portainer and select the macvlan network manually. Then the adguard will be available in the new IP.
