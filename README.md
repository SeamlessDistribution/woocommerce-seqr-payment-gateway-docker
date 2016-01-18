# woocommerce-seqr-payment-gateway-docker
Docker script for creating woocommerce SEQR plugin development environment.

Set properly variables in script start.sh according to your needs:
* WORDPRESS_VERSION - release version of Wordpress
* WOOCOMMERCE_VERSION - ecommerce plugin version
* WC_SEQR_PLUGIN_DIR - directory with seqr payment plugin

After running ./start.sh container with Woocommerce should be up and running.
You can log in to your admin page by going to http://localhost:8080/wp-admin

Credentials:
* Login - admin
* Password - admin123
