
# Infrastructure block
# The environment value is a mandatory field, it is used for partitioning the environments, for example (PROD and NP)
environment="MGMT"


# The location/region value is a mandatory field, it is used to control where the resources are deployed
location="japaneast"

# RESOURCEGROUP
# The two resource group name and arm_id can be used to control the naming and the creation of the resource group
# The resourcegroup_name value is optional, it can be used to override the name of the resource group that will be provisioned
# The resourcegroup_name arm_id is optional, it can be used to provide an existing resource group for the deployment
#resourcegroup_name=""
resourcegroup_arm_id="/subscriptions/04df7e2a-4425-4888-93bd-29038809737c/resourceGroups/SAPCP-Prod"


#resourcegroup_tags = {
# tag=value    
#    }
#
# Networking information
#

management_network_name="SAPCP_vNET_Prod"
management_network_logical_name="DEP00"
#management_network_arm_id=""
management_network_address_space="10.153.105.0/25"


# management subnet
# If defined these parameters control the subnet name and the subnet prefix
# management_subnet_name is an optional parameter and should only be used if the default naming is not acceptable 
management_subnet_name="CP_Subnet"

# management_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
management_subnet_address_prefix="10.153.105.0/28"
# management_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet to use
#management_subnet_arm_id="/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/MGMT-WEEU-MGMT01-INFRASTRUCTURE/providers/Microsoft.Network/virtualNetworks/MGMT-WEEU-MGMT01-vnet/subnets/MGMT-WEEU-MGMT01-subnet_management"

# management_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#management_subnet_nsg_arm_id="/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/MGMT-WEEU-MGMT01-INFRASTRUCTURE/providers/Microsoft.Network/networkSecurityGroups/MGMT-WEEU-SAP01_managementSubnet-nsg"

# management_subnet_nsg_allowed_ips is an optional parameter that if provided specifies a list of allowed IP ranges for the NSG
#management_firewall_subnet_arm_id= ""

# management_firewall_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
#management_firewall_subnet_address_prefix="10.10.20.0/26"

# bastion_subnet_address_prefix is a mandatory parameter if bastion is deployed and if the subnets are not defined in the workload or if existing subnets are not used
bastion_subnet_address_prefix="10.153.105.64/26"

########################################################
#
#         Deployer VM information
#
########################################################

# deployer_size is optional and defines the virtual machine SKU
#deployer_size="Standard_D4ds_v4"

# deployer_disk_type is optional and defines the virtual machine disk type
#deployer_disk_type"="Premium_LRS"

# use_DHCP is a boolean flag controlling if Azure subnet provided IP addresses should be used (true)
use_DHCP=true

# private_ip_address if defined will provide the IP addresses for the network interface cards 
#private_ip_address=""

#
# The deployer_image defines the Virtual machine image to use, if source_image_id is specified the deployment will use the custom image provided, in this case os_type must also be specified

#deployer_image={
#    "os_type"         = "Linux"    
#    "source_image_id" =""
#    "publisher"       ="Canonical"
#    "offer"           ="UbuntuServer"
#    "sku"             ="18.04-LTS"
#    "version"         ="latest"
#}


/*
This block describes the variables for the authentication section block in the json file
*/

# deployer_authentication_type defines the authentication type for the deployer virtual machine 
#deployer_authentication_type="key"

# deployer_authentication_username defines the username for the deployer virtual machine
#deployer_authentication_username="azureadm"

# deployer_authentication_password if defined is the password for the deployer virtual machine
#deployer_authentication_password=""

# deployer_authentication_path_to_public_key if defined is the path to the file containing the public key for the deployer virtual machine
#deployer_authentication_path_to_public_key=""

# deployer_authentication_path_to_private_key if defined is the path to the file containing the private key for the deployer virtual machine
#deployer_authentication_path_to_private_key=""

# These variables define the keyvault that is used to store the deployer credentials
# user_keyvault_id is the Azure resource identifier for the keyvault that will contain the credentials keys
user_keyvault_id="/subscriptions/04df7e2a-4425-4888-93bd-29038809737c/resourceGroups/SAPCP-Prod/providers/Microsoft.KeyVault/vaults/SAPV2-Prod-KeyVault"

# automation_keyvault_id is the Azure resource identifier for the keyvault that will be used by the automation (not used currently)
#automation_keyvault_id=""

# deployer_private_key_secret_name if provided contains the secret name for the private key 
#deployer_private_key_secret_name=""

# deployer_public_key_secret_name if provided contains the secret name for the public key 
#deployer_public_key_secret_name=""

# deployer_username_secret_name if provided contains the secret name for the username 
#deployer_username_secret_name=""

# deployer_password_secret_name if provided contains the secret name for the password 
#deployer_password_secret_name=""


/*
This block describes the variables for the options section block in the json file
*/

deployer_enable_public_ip=false
# firewall_deployment is a boolean flag controlling if an Azure firewall is to be deployed in the deployer VNet
firewall_deployment=false

# firewall_rule_subnets is an optional list of subnets to be added to the Azure firewall
#firewall_rule_subnets=[]

# firewall_rule_allowed_ipaddresses is an optional list of IP Addresses to be added to the Azure firewall
#firewall_rule_allowed_ipaddresses=[]

# assign_subscription_permissions is a boolean flag controlling if the deployment credential should be assigned Contribuor permissions on the subscription
#assign_subscription_permissions=true

# use_private_endpoint is a boolean flag controlling if the keyvaults and storage accounts have private endpoints
# use_private_endpoint=false
