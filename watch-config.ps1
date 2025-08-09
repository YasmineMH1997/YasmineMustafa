# Auto-restart Jekyll when _config.yml changes (Windows PowerShell)

$jekyllArgs = "exec jekyll serve --livereload --incremental"
Write-Host "Starting Jekyll..." -ForegroundColor Cyan
$script:proc = Start-Process -FilePath "bundle" -ArgumentList $jekyllArgs -NoNewWindow -PassThru

# Watch just _config.yml
$fsw = New-Object IO.FileSystemWatcher (Get-Location), "_config.yml"
$fsw.NotifyFilter = [IO.NotifyFilters]'LastWrite, Size, FileName'
$fsw.EnableRaisingEvents = $true

$handler = Register-ObjectEvent $fsw Changed -SourceIdentifier "ConfigChanged" -Action {
    try {
        Write-Host "`n_config.yml changed → restarting Jekyll..." -ForegroundColor Yellow
        $script:proc | Stop-Process -ErrorAction SilentlyContinue
        Start-Sleep -Seconds 1
        $script:proc = Start-Process -FilePath "bundle" -ArgumentList $using:jekyllArgs -NoNewWindow -PassThru
    } catch {
        Write-Host "Restart failed: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# Keep the script running until you Ctrl+C the PowerShell window
Wait-Process -Id $proc.Id

# Cleanup
Unregister-Event -SourceIdentifier "ConfigChanged" -ErrorAction SilentlyContinue
$fsw.Dispose()
