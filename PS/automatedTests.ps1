param($appName, $serverEnv, $testCategory, $envUrl)
Write-Host $appName
Write-Host $serverEnv
Write-Host $testCategory
Write-Host $envUrl

$appEnv = $appName + '_' + $serverName

Write-Host $appEnv