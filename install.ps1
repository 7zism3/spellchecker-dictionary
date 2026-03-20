# spellchecker-dictionary installer
# Usage: irm https://raw.githubusercontent.com/7zism3/spellchecker-dictionary/main/install.ps1 | iex

$fileUrl  = "https://raw.githubusercontent.com/7zism3/spellchecker-dictionary/main/spellchecker-dictionary.xml"
$fileName = "spellchecker-dictionary.xml"
$jetBrainsPath = "$env:APPDATA\JetBrains"

Write-Host ""
Write-Host "=== spellchecker-dictionary installer ===" -ForegroundColor Cyan
Write-Host ""

# Kiểm tra thư mục JetBrains tồn tại
if (-not (Test-Path $jetBrainsPath)) {
    Write-Host "[ERROR] Khong tim thay thu muc JetBrains: $jetBrainsPath" -ForegroundColor Red
    exit 1
}

# Tải file XML
$tmpFile = "$env:TEMP\$fileName"
Write-Host "[1/3] Dang tai $fileName ..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri $fileUrl -OutFile $tmpFile -UseBasicParsing
    Write-Host "      OK" -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Tai file that bai: $_" -ForegroundColor Red
    exit 1
}

# Lấy tất cả thư mục con JetBrains IDE (IntelliJIdea*, WebStorm*, PyCharm*, DataGrip*, ...)
$ideDirs = Get-ChildItem -Path $jetBrainsPath -Directory

$count = 0
Write-Host ""
Write-Host "[2/3] Copy vao cac IDE..." -ForegroundColor Yellow

foreach ($dir in $ideDirs) {
    $optionsPath = Join-Path $dir.FullName "options"

    # Tạo thư mục options nếu chưa có
    if (-not (Test-Path $optionsPath)) {
        New-Item -ItemType Directory -Path $optionsPath | Out-Null
    }

    $dest = Join-Path $optionsPath $fileName
    Copy-Item -Path $tmpFile -Destination $dest -Force
    Write-Host "      -> $dest" -ForegroundColor Gray
    $count++
}

# Dọn file tạm
Remove-Item $tmpFile -Force

Write-Host ""
Write-Host "[3/3] Hoan thanh! Da cai vao $count IDE." -ForegroundColor Green
Write-Host ""
Write-Host "Luu y: Khoi dong lai JetBrains IDE de ap dung." -ForegroundColor Cyan
Write-Host ""
