# 启用仓库级 Git 钩子（commit-msg 规范校验）
# 用法: powershell -ExecutionPolicy Bypass -File scripts/setup-hooks.ps1
git config core.hooksPath .githooks
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ 已启用 .githooks 提交钩子（规范提交强制生效）" -ForegroundColor Green
} else {
    Write-Host "❌ 配置失败，请检查 git 是否可用" -ForegroundColor Red
    exit 1
}
