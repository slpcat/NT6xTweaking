function Set-TCPAckFrequency
{
    param
    (
        [parameter(Mandatory = 0, Position = 0)]
        [bool]$Enable
    )

    $value = if ($Enable)
    {
        2
    }
    else
    {
        1
    }

    (Get-ChildItem -Path "registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces").Name `
    | where{
        Get-ItemProperty -Path "registry::$_" `
        | where AddressType -eq 0 `
        | where {$_.TcpAckFrequency -ne $value}
    } `
    | %{ Set-ItemProperty -Path "registry::$_" -Name TcpAckFrequency -Value $value -PassThru -Force}
}
# Disable TCPAckFrequency
Set-TCPAckFrequency -Enable $false
# Enable TCPAckFrequency
#Set-TCPAckFrequency -Enable $true

function Set-TCPNoDelay
{
    param
    (
        [parameter(Mandatory = 0, Position = 0)]
        [bool]$Enable
    )

    $value = if ($Enable)
    {
        1
    }
    else
    {
        0
    }

    (Get-ChildItem -Path "registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces").Name `
    | where{
        Get-ItemProperty -Path "registry::$_" `
        | where AddressType -eq 0 `
        | where {$_.TcpNoDelay -ne $value}
    } `
    | %{ Set-ItemProperty -Path "registry::$_" -Name TcpNoDelay -Value $value -PassThru -Force}
}
# Disable TCPNoDelay
#Set-TCPNoDelay -Enable $false
# Enable TCPAckFrequency
Set-TCPNoDelay -Enable $true

function Set-TcpDelAckTicks
{
    param
    (
        [parameter(Mandatory = 0, Position = 0)]
        [bool]$Enable
    )

    $value = if ($Enable)
    {
        1
    }
    else
    {
        0
    }

    (Get-ChildItem -Path "registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces").Name `
    | where{
        Get-ItemProperty -Path "registry::$_" `
        | where AddressType -eq 0 `
        | where {$_.TcpDelAckTicks -ne $value}
    } `
    | %{ Set-ItemProperty -Path "registry::$_" -Name TcpDelAckTicks -Value $value -PassThru -Force}
}
# Disable TcpDelAckTicks
Set-TcpDelAckTicks -Enable $false
# Enable TcpDelAckTicks
#Set-TcpDelAckTicks -Enable $true


