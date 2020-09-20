function Get-CloudiQOrganization {
    <#
    .SYNOPSIS

    Get all organizations that you have access to.

    .DESCRIPTION

    Get all the organizations that are available to you, and presents them as objects. 

    .PARAMETER Name

    Name of the organization you want. Supports partial names, no wildcard needed.

    .INPUTS

    

    .OUTPUTS

    Outputs a PSCustomObject.

    .EXAMPLE
    Get-CloudiQOrganization
    .EXAMPLE
    Get-CloudiQOrganization -Name "Organization01"
    #>
    [CmdletBinding()]
    param (
        [Parameter(Position=0)]
        [string]
        $Name
    )
    $APICall = Invoke-CloudiQApiRequest -Uri ("organizations/?search="+$name)
    $APICall | ForEach-Object {
        [PSCustomObject]@{
            Name            = $_.Name
            CustomerId      = $_.Id
            ParentId        = $_.ParentId
            AccountNumber   = $_.AccountNumber
        }
    }
}