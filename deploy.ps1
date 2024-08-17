# Set variables
$resourceGroupName = "myResourceGroup"
$location = "Sweden Central"
$templateFile = "./azuredeploy.json"

# Create the resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy the ARM template
New-AzResourceGroupDeployment -Name blanktemplate -ResourceGroupName $resourceGroupName -TemplateFile $templateFile
