$rndm = New-Object -TypeName PSObject
$rndm = ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".tochararray() | sort {Get-Random})[0..8] -join ''
$newName = "ASGCM-$rndm"
#$log.WriteLine("Renaming..new name is <" + $newname + ">")
Rename-Computer $newName
Restart-Computer