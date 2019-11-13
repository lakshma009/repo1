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

sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@40.121.48.14 << 'ENDSSH'
sudo -S <<< "Azure.123456@e" yum update -y
sudo -S <<< "Azure.123456@e" yum install java-1.8.0-openjdk -y
#sudo -S <<< "Azure.123456@e" wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
#sudo -S <<< "Azure.123456@e" tar -xvzf apache-tomcat-9.0.27.tar.gz
scp /var/root/.jenkins/workspace/Azure/hello-world-war-1.0.0.war azureuser@40.121.48.14:/apache-tomcat-9.0.27/webapps -p nisum
exit
ENDSSH
