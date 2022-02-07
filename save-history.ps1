param(
    [Parameter(Mandatory=$true)]
        [string]$filename
)

function save-history {
    param(
        $filename,
        $delim="`t"
    );
    Set-Content -Path $filename -Value $(
        Write-Output "Id$($delim)CommandLine"
        Get-History | % {
            Write-Output "  " + [string]$_.Id + $delim + $_.CommandLine
        } 
    )
}
save-history $filename