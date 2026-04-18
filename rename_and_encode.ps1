$files = Get-ChildItem "C:\Users\atnne\Documents\english-app" -Filter "*.jpg"
$i = 1
foreach ($f in $files) {
    $newName = "emma$i.jpg"
    Rename-Item -Path $f.FullName -NewName $newName
    Write-Output "Renamed: $($f.Name) -> $newName"
    $i++
}
