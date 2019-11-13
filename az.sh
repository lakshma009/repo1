az login -u yrajavarapu@nisum.com -p Nisum.1090@e

az group create --name myResource1 --location eastus

az vm create \
   --resource-group myResource1 \
   --name myVM1 \
   --image CentOS \
   --admin-username azureuser \
   --admin-password Azure.123456@e
   
az vm open-port --port 80 --resource-group myResource1 --name myVM1
