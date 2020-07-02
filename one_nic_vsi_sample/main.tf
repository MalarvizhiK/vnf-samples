##############################################################################
# This is default entrypoint.
#  - Ensure user provided region is valid
#  - Ensure user provided resource_group is valid
##############################################################################

variable "generation" {
  default     = 2
  description = "The VPC Generation to target. Valid values are 2 or 1."
}

provider "ibm" {
  /* Uncomment ibmcloud_api_key while testing from CLI */
  #ibmcloud_api_key      = "${var.api_key}"  
  generation            = "${var.generation}" 
  region                = "${var.region}"
  ibmcloud_timeout      = 300
}

##############################################################################
# Read/validate Region
##############################################################################
data "ibm_is_region" "region" {
  name = "${var.region}"
}

##############################################################################
# Read/validate Zone
##############################################################################
data "ibm_is_zone" "zone" {
  name = "${var.zone}"
  region = "${data.ibm_is_region.region.name}"
}

##############################################################################
# Read/validate Resource Group
##############################################################################
data "ibm_resource_group" "rg" {
  name = "${var.resource_group}"
}

# Generating random ID
resource "random_uuid" "test_uuid" { }

resource "ibm_resource_instance" "test-pdns-instance" {
  name              = "${var.vpc_name}-${substr(random_uuid.test_uuid.result,0,8)}"
  resource_group_id = data.ibm_resource_group.rg.id
  location          = "global"
  service           = "dns-svcs"
  plan              = "standard-dns"
}
