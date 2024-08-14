# azure-resource-manager

### Notes: 
1. For Linux or any other Linux based OS, you can use the following command to install the Azure CLI:
```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
2. Then login to your Azure account using the following command:
```bash
az login
```
### Install PowerShell in Ubuntu/ WSL/ Linux:
```bash
1. sudo apt-get update
2. wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
3. sudo dpkg -i packages-microsoft-prod.deb
4. sudo apt-get update
5. sudo apt-get install -y powershell
6. pwsh
```
### Install Az PowerShell module:
```bash
1. Install-Module -Name Az -Repository PSGallery -Force
2. Update-Module -Name Az -Force
```
### Connect to Azure account:
```bash
Connect-AzAccount
```
error: "Connect-AzAccount: Authentication failed against tenant organizations. User interaction is required. This may be due to the conditional access policy settings such as multi-factor authentication (MFA). If you need to access subscriptions in that tenant, please rerun 'Connect-AzAccount' with additional parameter '-TenantId organizations'."
```bash
Update-AzConfig -EnableLoginByWam $false
```
### Connect to Azure account using tenant id:
```bash
Connect-AzAccount -TenantId <tenant_id>
```
### Activate the virtual environment in powershell:
```bash
. venv/bin/Activate
```