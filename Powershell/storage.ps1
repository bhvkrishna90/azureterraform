param(
    [string]$azureADAppID,
    [string]$azureADappKey,
    [string]$tenantID,

    [string]$location,
    [string]$rgName,
    
    [string]$storageAccountName,
    [string]$storageSku = "Standard_LRS",
    [string]$storageKind = "StorageV2",
    [string]$storageAccTier = "Cool",
    [string]$storageConName
)

#Login to azure Account
$azurePassword =  $azureADappKey | ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object -Typename System.Management.Automation.PSCredential($azureADAppID, $azurePassword)
Login-AzureRmAccount -Credential $cred -TenantId $tenantID -ServicePrincipal 
Write-Host "Logged in Succssfully" -ForegroundColor DarkGreen


#Create Azure Resource Group
if ((Get-AzureRmResourceGroup | Select-Object ResourceGroupName).ResourceGroupName -contains $rgName ) {
    Write-Host "Resource Group " $rgName " is Already Exists" -ForegroundColor DarkYellow
}
else {
    New-AzureRmResourceGroup -Name $rgName -Location $location -Tag @{ Empty=$null; Department="Dev"; CreatedBy="Bhimanavarjula Venkata Krishna";}
}


#Create Azure Storage Account
if ((Get-AzureRmStorageAccount | Select-Object StorageAccountName).StorageAccountName -contains $storageAccountName ) {
    Write-Host "Storage Account " $storageAccountName " is Already Exists" -ForegroundColor DarkYellow
    $storageAccount = (Get-AzureRmStorageAccount -ResourceGroupName $rgName )
    $ctx = $storageAccount.Context
}
else {
    $storageAccount = New-AzureRmStorageAccount -ResourceGroupName $rgName -Name $storageAccountName -SkuName $storageSku -Location $location -Kind $storageKind -AccessTier $storageAccTier -Tag @{ Empty=$null; Department="Dev"; CreatedBy="Bhimanavarjula Venkata Krishna";}
    $ctx = $storageAccount.Context
}

#Creare Azure Storage Contianer
if ( (Get-AzureRmStorageContainer -ResourceGroupName "Terraform" -StorageAccountName "tfstatestr" | Select-Object Name).Name -contains $storageConName ) {
    Write-Host "Storage Account Container " $storageConName " is Already Exists" -ForegroundColor DarkYellow
}
else{
    New-AzureStorageContainer -Name $storageConName -Permission Container -Context $ctx
}

#Get Azure Account Details
$subscriptionId = (Get-AzureRmSubscription | Select-Object Id).Id
Write-Host "Subscription Id is: " $subscriptionId -ForegroundColor DarkMagenta
Write-Host "Client ID is: " $azureADAppID -ForegroundColor DarkMagenta
Write-Host "Client Secret is: " $azureADappKey -ForegroundColor DarkMagenta
Write-Host "Tenant Id is: " $tenantID -ForegroundColor DarkMagenta

#Get Storage Account Details
$storageAccountKey1 = (Get-AzureRmStorageAccountKey -ResourceGroupName $rgName -Name $storageAccountName).Value[0]
$storageAccountKey2 = (Get-AzureRmStorageAccountKey -ResourceGroupName $rgName -Name $storageAccountName).Value[1]
Write-Host "Resource Group Name is: " $rgName -ForegroundColor DarkMagenta
Write-Host "Storage Account Name is: " $storageAccountName -ForegroundColor DarkMagenta
Write-Host "Storage Container Name is: " $storageConName -ForegroundColor DarkMagenta
Write-Host "Storage Account Primary Key is: " $storageAccountKey1 -ForegroundColor DarkMagenta
Write-Host "Storage Account Secondary Key is: " $storageAccountKey2 -ForegroundColor DarkMagenta