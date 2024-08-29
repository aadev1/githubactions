param (
    [Parameter(Mandatory=$true)]
    [string]$Name,

    [Parameter(Mandatory=$false)]
    [int]$Age
)

Write-Host "Hello, $Name!"
if ($Age) {
    Write-Host "You are $Age years old."
}