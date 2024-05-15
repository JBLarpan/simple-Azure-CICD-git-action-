# simple-Azure-CICD-git-action-
Simple IAC,CI-CD operation through git actions.
It will create an azure linux vm 
then install apache tomcat web server 
and then access from prot 8080.

first look of your web server will be 

![image](https://github.com/JBLarpan/simple-Azure-CICD-git-action-/assets/52735073/c740b2d0-9b19-4794-a0d0-79ee4478caf5)


point to remeber: 
- make connection to azure on subscription level :
az ad sp create-for-rbac --name simple-app --role contributor --scopes /subscriptions/{subscripton-id} --json-auth

- create secret
  - secrets.AZURE_CREDENTIALS (inputs is the json output from previous command)
  - secrets.AZURE_SUBSCRIPTION (subscription id from azure portal)
  - secrets.SERVER_PASSWORD (server password for the linux admin user, here the password again is available in bicep param as secret[here we need to have some work arpund])
