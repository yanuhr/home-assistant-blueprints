# Skript na commitnutie YAML blueprintov do vetvy 'main'

$targetFolder = "blueprints/automation/yanuhr"

# Overenie priecinka
if (-not (Test-Path $targetFolder)) {
    Write-Host "ERROR: Folder '$targetFolder' does not exist." -ForegroundColor Red
    exit 1
}

# Pridaj vsetky YAML subory
git add "$targetFolder\*.yaml"

# Zisti, ci su nejake staged zmeny
git diff --cached --quiet
$hasChanges = $LASTEXITCODE -ne 0

if (-not $hasChanges) {
    Write-Host "No changes to commit." -ForegroundColor Yellow
    exit 0
}

# Commit a push
git commit -m "update: uprava blueprintov v $targetFolder"
git push origin main

Write-Host "Blueprinty boli commitnute a pushnute do vetvy 'main'." -ForegroundColor Green
