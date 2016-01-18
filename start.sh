#!/bin/bash -x

# Wordpress version should be at least 3.7!
WORDPRESS_VERSION=4.4
WOOCOMMERCE_VERSION=2.4.13

# Path to directory with SEQR woocommerce plugin
export WC_SEQR_PLUGIN_DIR='../woocommerce-seqr-payment-gateway/'

docker-compose up -d
export WEB_CONTAINER_ID="`docker ps | grep woocommerce_seqr_container | awk '{print $1}'`"
docker exec $WEB_CONTAINER_ID /var/www/html/install-wc.sh $WORDPRESS_VERSION $WOOCOMMERCE_VERSION
