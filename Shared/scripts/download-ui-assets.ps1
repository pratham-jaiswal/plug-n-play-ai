param(
    [Parameter(Mandatory = $true)]
    [string]$VendorDir
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ConfigPath = Join-Path $ScriptDir "..\config\ui-vendor-assets.json"

New-Item -ItemType Directory -Force -Path $VendorDir | Out-Null

Write-Host "      Downloading shared UI vendor asset list..." -ForegroundColor DarkGray

try {
    $json = Get-Content -Raw -Path $ConfigPath | ConvertFrom-Json
} catch {
    Write-Host "      WARNING: Could not read UI vendor JSON config. Skipping." -ForegroundColor Yellow
    exit 0
}

$failedAssets = @()
$successCount = 0

foreach ($asset in $json.assets) {
    $name = [string]$asset.name
    $url = [string]$asset.url
    if ([string]::IsNullOrWhiteSpace($name) -or [string]::IsNullOrWhiteSpace($url)) { continue }

    $dest = Join-Path $VendorDir $name
    Write-Host "      -> $name" -ForegroundColor DarkGray
    try {
        $curlOutput = curl.exe -L --ssl-no-revoke --silent --show-error $url -o $dest 2>&1
        $curlExit = $LASTEXITCODE
        
        if ($curlExit -ne 0) {
            throw "Download failed (curl exit $curlExit): $curlOutput"
        }
        
        if (-Not (Test-Path $dest) -or (Get-Item $dest).Length -lt 1024) {
            throw "Downloaded file missing or too small"
        }
        # Patch Font Awesome CSS so font paths resolve from ./vendor/ instead of ../webfonts/
        if ($name -eq "fa-all.min.css") {
            (Get-Content -Raw $dest) -replace '\.\.\/webfonts\/', './' | Set-Content -NoNewline $dest
        }
        $successCount++
    } catch {
        if (Test-Path $dest) {
            Remove-Item -LiteralPath $dest -Force -ErrorAction SilentlyContinue
        }
        $failedAssets += $name
        Write-Host "         WARNING: Could not fetch $name. Details: $_" -ForegroundColor Yellow
    }
}

if ($failedAssets.Count -gt 0) {
    Write-Host ""
    Write-Host "      UI asset status: $successCount succeeded, $($failedAssets.Count) failed." -ForegroundColor Yellow
    Write-Host "      Failed: $($failedAssets -join ', ')" -ForegroundColor Yellow
    Write-Host "      UI will fallback to online resources when available." -ForegroundColor Yellow
} else {
    Write-Host "      UI asset bootstrap complete ($successCount assets)." -ForegroundColor Green
}
