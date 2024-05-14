targetScope = 'subscription'
param rgName string
param rgLocation string
param tags object = {}

resource rg 'Microsoft.Resources/resourceGroups@2018-05-01' = {
  location: rgLocation
  name: rgName
  properties: {}
  tags: tags
}

output resourceGroupName string = rgName
