param (
    [Parameter(Mandatory=$true)]
    [string]$Environment,

    [Parameter(Mandatory=$false)]
    [string]$Branch
)

Write-Host "Environment, $Environment!"
if ($Branch) {
    Write-Host "You are on the $Branch branch."
}