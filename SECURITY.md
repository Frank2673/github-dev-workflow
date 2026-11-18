# 安全政策

本仓是 GitHub 开发流程样板仓（CI / hooks / 模板 / 脚本），不含运行时服务。

## 报告问题

- 隐私：本仓不应包含任何真实凭据、内网地址或个人信息。**发现泄露请走私密通道**，不要在公开 Issue 复述具体值。
- 脚本：`.githooks/` 与 `scripts/` 下的 shell / PowerShell 若存在命令注入、路径穿越等问题，同样走私密通道。
- 通道：本仓 **Security → Report a vulnerability**。

## 响应节奏

确认收到 72 小时内；修复视严重度排期。

## 本仓的安全约定

- 提交前由 `.githooks/commit-msg` 校验提交信息格式
- CI 只跑静态检查与脚本自检，不联网、不接触任何凭据
- 示例文件里的地址一律使用 RFC 1918 / example.com 占位值
