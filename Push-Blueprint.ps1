param (
    [Parameter(Mandatory = $true)]
    [string]$File
)

if (-not (Test-Path $File)) {
    Write-Host "❌ Súbor '$File' neexistuje." -ForegroundColor Red
    exit 1
}

git add $File
git commit -m "auto: aktualizácia blueprintu $File"
git push

Write-Host "✅ Súbor '$File' bol commitnutý a pushnutý na GitHub." -ForegroundColor Green
