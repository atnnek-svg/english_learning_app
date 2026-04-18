$html = [System.IO.File]::ReadAllText("C:\Users\atnne\Documents\english-app\english-app.html", [System.Text.Encoding]::UTF8)
$hasBase64 = $html.Contains("data:image/jpeg;base64")
$hasObjectFit = $html.Contains("object-fit:cover")
Write-Output "base64 embedded: $hasBase64"
Write-Output "object-fit found: $hasObjectFit"
Write-Output "HTML size (chars): $($html.Length)"
