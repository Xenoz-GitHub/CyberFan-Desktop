# =============================================================================
# CyberFan - package builder
# Creates a one-click Rainmeter installer (.rmskin) that includes the skin
# AND the WebView2 plugin, so end users only have to double-click one file.
#
# Usage:  .\build.ps1
# Output: dist\CyberFan_<version>.rmskin
# Requires: Python 3.10+ (rmskin-builder is installed automatically)
# =============================================================================
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $Root

$PluginVersion   = "v1.0.0"
$PluginZipName   = "WebView2_v1.0.0_x64_x86_dll.zip"
$PluginUrl       = "https://github.com/NSTechBytes/WebView2/releases/download/$PluginVersion/$PluginZipName"
$Dll32           = "Plugins\WebView2\32bit\WebView2.dll"
$Dll64           = "Plugins\WebView2\64bit\WebView2.dll"

# --- 1. Stage the WebView2 plugin DLLs (downloaded once from NSTechBytes) ---
if (-not (Test-Path $Dll32) -or -not (Test-Path $Dll64)) {
    Write-Host "WebView2 plugin DLLs not found. Downloading from NSTechBytes..."
    $tmp = Join-Path $env:TEMP "CyberFan-build"
    if (Test-Path $tmp) { Remove-Item $tmp -Recurse -Force }
    New-Item -ItemType Directory -Path $tmp | Out-Null
    try {
        Invoke-WebRequest -Uri $PluginUrl -OutFile (Join-Path $tmp $PluginZipName) -UseBasicParsing
        Expand-Archive (Join-Path $tmp $PluginZipName) -DestinationPath (Join-Path $tmp "unpacked")
        New-Item -ItemType Directory -Force -Path "Plugins\WebView2\32bit", "Plugins\WebView2\64bit" | Out-Null
        Copy-Item (Join-Path $tmp "unpacked\x32\WebView2.dll") $Dll32 -Force
        Copy-Item (Join-Path $tmp "unpacked\x64\WebView2.dll") $Dll64 -Force
        Write-Host "Plugin DLLs staged: Plugins\WebView2\"
    } finally {
        Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue
    }
} else {
    Write-Host "WebView2 plugin DLLs already staged."
}

# --- 2. Ensure the rmskin-builder Python package is available ---------------
python -c "import rmskin_builder" 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Installing rmskin-builder (one-time)..."
    python -m pip install rmskin-builder
    if ($LASTEXITCODE -ne 0) { throw "Could not install rmskin-builder." }
}

# --- 3. Build the package ----------------------------------------------------
New-Item -ItemType Directory -Force -Path "dist" | Out-Null
python -c "import rmskin_builder; rmskin_builder.main()" -p . -d "dist"
if ($LASTEXITCODE -ne 0) { throw "Package build failed." }

$pkg = Get-ChildItem "dist\*.rmskin" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
if (-not $pkg) { throw "No .rmskin was produced." }

Write-Host ""
Write-Host "Done. Package created: $($pkg.FullName)"
Write-Host "Upload it to GitHub Releases - users install it with a double-click."
