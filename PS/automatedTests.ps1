param($appName, $serverEnv, $testCategory)
Write-Host $appName
Write-Host $serverEnv
Write-Host $testCategory

$appEnv = $appName + '_' + $serverEnv