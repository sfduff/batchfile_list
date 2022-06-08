$logfile = "test.log"
$password = "bazinga"

foreach( $line in Get-Content $args[0] ) 
{
    $command = "echo " + $line + " " + $password
    Invoke-Expression -Command:$command | Out-File $logfile
} 
