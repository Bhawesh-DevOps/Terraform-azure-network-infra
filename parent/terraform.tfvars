rg = {
    rg1 ={
        name = "bhavik"
        location = "eastus"
    }
    rg2 = {
        name = "bhavik1"
        location = "westus"
    }
}
vnet = {
    vnet2 = {
        name = "virtual"
        location = "eastus"
        resource_group_name =  "bhavik"
        address_space = ["10.0.0.0/16"]
    }
}
sbt = {
    sbt2 = {
        name = "subnet"
        resource_group_name =  "bhavik"
        virtual_network_name =  "virtual"
         address_prefixes = ["10.0.0.0/24"]

    }
    sbt3 = {
        name = "subnet1"
        resource_group_name =  "bhavik"
        virtual_network_name =  "virtual"
         address_prefixes = ["10.0.1.0/24"]
}
}