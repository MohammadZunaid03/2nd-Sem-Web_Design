cd "d:\_gspou\OneDrive\Desktop\2nd-Sem-Web_Design"
$files = git ls-files --others --exclude-standard
$count = 0
foreach ($file in $files) {
    $count++
    git add "$file"
    git commit -m "Add: $file"
    git push
    Write-Host "✅ Commit $count completed for: $file"
}
Write-Host "All $count files committed and pushed!"
