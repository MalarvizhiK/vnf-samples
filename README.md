# vnf-samples.


This repository contains sample terraform codes to create VNF instances with different scenarios like Single NIC Instance, Multi NIC Instance etc.

The different scenarios for which the sample code are available are:

| Scenario | Description | URL |
|----------|-------------|-----|
| one_nic_vsi_sample | Contains the sample terraform code to create a VNF Instance with a single network interface. | https://github.com/IBM-Cloud/vnf-samples/tree/master/one_nic_vsi_sample |
| multi_nic_vsi_sample | Contains the sample terraform code to create a VNF Instance with multiple network interfaces. | https://github.com/IBM-Cloud/vnf-samples/tree/master/multi_nic_vsi_sample |
|catalog_img_vsi_sample | Contains the sample terraform code to create a VNF Instance using a catalog image. | https://github.com/IBM-Cloud/vnf-samples/tree/master/catalog_img_vsi_sample |


# Testing Sample Code 

Each of these scenarios can be tested using Terraform CLI commands and IBM Cloud Schematics.

  (1) To test it from IBM Cloud Schematics, the path of the directory in this github repository need to be provided as the URL. For example to test the one_nic_vsi_sample scenario, the URL to be used in the IBM Cloud Schematics will be https://github.com/IBM-Cloud/vnf-samples/tree/master/one_nic_vsi_sample. Please refer the README file of respective scenarios to know more about the values to be specified in Schematics UI.

  (2) To test the use case in CLI, change directory to the respective folder of the scenario. Example: /Users/username/vnf-samples/one_nic_vsi_sample. Execute terraform commands in the scenario directory. 
    
    Example:   
    /Users/username/vnf-samples/one_nic_vsi_sample> terraform init

  (3) In order to use a particular scenario in the content catalogue as a .tar.gz release file, copy the code of the specific    scenario in a separate repository and then use it as a .tar.gz release file. This repository content as such cannot be used in the content catalogue.

Follow the README for each of the scenarios to get more details. 
