#az login -u yrajavarapu@nisum.com -p Nisum.1090@e

#az group create --name myResource1 --location eastus

#az vm create \
#   --resource-group myResource1 \
 #  --name myVM1 \
  # --image CentOS \
  # --admin-username azureuser \
  # --admin-password Azure.123456@e
   
#az vm open-port --port 80 --resource-group myResource1 --name myVM1

#az vm open-port --port 22 --resource-group myResource1 --name myVM1

sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@40.121.48.14 << 'EOF'

sudo -S <<< "Azure.123456@e(password)”

yum -y update

su -c "yum install java-1.8.0-openjdk" -Y

wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz /usr/share

