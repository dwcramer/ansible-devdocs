#!/bin/bash

# With the addition of Keystone, to use an openstack cloud you should
# authenticate against keystone, which returns a **Token** and **Service
# Catalog**.  The catalog contains the endpoint for all services the
# user/tenant has access to - including nova, glance, keystone, swift.
#
# *NOTE*: Using the 2.0 *auth api* does not mean that compute api is 2.0.  We
# will use the 1.1 *compute api*
export OS_AUTH_URL=https://us-internal-1.cloud.cisco.com:5000/v2.0

# With the addition of Keystone we have standardized on the term **tenant**
# as the entity that owns the resources.
export OS_TENANT_ID=7d5daaf8eb72499eadc4a3cc8b9331b6
export OS_TENANT_NAME="iotsp-internal-us-internal-1"

# In addition to the owning entity (tenant), openstack stores the entity
# performing the action as the **user**.
echo "Please enter your OpenStack Username: "
read -r OS_USERNAME_INPUT
export OS_USERNAME=$OS_USERNAME_INPUT

# With Keystone you pass the keystone password.
echo "Please enter your OpenStack Password: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT
