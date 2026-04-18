$bytes = [System.IO.File]::ReadAllBytes("C:\Users\atnne\Documents\english-app\emma1.jpg")
$b64 = [System.Convert]::ToBase64String($bytes)
$b64 | Out-File -FilePath "C:\Users\atnne\Documents\english-app\emma_b64.txt" -Encoding ASCII
Write-Output "Done. Length: $($b64.Length)"
