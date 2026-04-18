$bytes = [System.IO.File]::ReadAllBytes("C:\Users\atnne\Documents\english-app\emma1.jpg")
$b64 = [System.Convert]::ToBase64String($bytes)
$imgTag = '<img src="data:image/jpeg;base64,' + $b64 + '" style="width:100%;height:100%;object-fit:cover;border-radius:50%;">'

$htmlPath = "C:\Users\atnne\Documents\english-app\english-app.html"
$html = [System.IO.File]::ReadAllText($htmlPath, [System.Text.Encoding]::UTF8)

# Fix CSS for emma avatar
$html = $html.Replace(
    ".avatar.emma-av { background: var(--primary); }",
    ".avatar.emma-av { background: var(--primary); overflow: hidden; padding: 0; }"
)

# Fix JS - createMsg function (line 562)
$html = $html.Replace(
    "av.textContent = role === 'emma' ? '👩`u200d🏫' : '🙋';",
    "av.innerHTML = role === 'emma' ? '$imgTag' : '🙋';"
)

# Fix JS - showTyping function (line 586)
$html = $html.Replace(
    "av.textContent = '👩`u200d🏫';",
    "av.innerHTML = '$imgTag';"
)

[System.IO.File]::WriteAllText($htmlPath, $html, [System.Text.Encoding]::UTF8)
Write-Output "HTML size: $($html.Length)"
Write-Output "base64 embedded: $($html.Contains('data:image/jpeg;base64'))"
