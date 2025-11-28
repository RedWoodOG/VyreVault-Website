# Open VyreVault Website in Default Browser
# Run this from C:\VyreVault-Website folder

$htmlFile = Join-Path $PSScriptRoot "index.html"

if (Test-Path $htmlFile) {
    Write-Host "Opening VyreVault website in browser..." -ForegroundColor Cyan
    
    # Use Start-Process with the default browser
    Start-Process $htmlFile -Verb Open
    
    Write-Host "Website opened successfully!" -ForegroundColor Green
} else {
    Write-Host "Error: index.html not found in current directory" -ForegroundColor Red
    Write-Host "Make sure you're running this from C:\VyreVault-Website" -ForegroundColor Yellow
}
