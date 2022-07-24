# Youtube Link: https://www.youtube.com/watch?v=FKmyvXFwwtY

# https://github.com/nextcloud/nextcloudpi

DOMAIN=192.168.1.130        # example for allowing an IP
DOMAIN=myclouddomain.net    # example for allowing a domain
docker run -d -p 4443:4443 -p 443:443 -p 80:80 -v ncdata:/data --name nextcloudpi ownyourbits/nextcloudpi $DOMAIN
