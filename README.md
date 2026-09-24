# 🚀 github-dev-workflow

> GitHub 建仓 → 开发 → 自动化 → 作品集，全流程自动化样板仓

![CI](https://github.com/Frank2673/github-dev-workflow/actions/workflows/ci.yml/badge.svg)
![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)

这个仓库是我的 **GitHub 开发流程样板间**：用最小可用配置跑通「一个想法 → 规范提交 → 自动检查 → 公开作品」的完整流水线，并把每一步沉淀成可复用的模板与文档。

---

## 📁 仓库结构

| 路径 | 作用 |
|---|---|
| `.github/workflows/ci.yml` | CI 流水线：push / PR 自动检查 |
| `.github/pull_request_template.md` | PR 模板：合并前必须说清变更与验证 |
| `.githooks/commit-msg` | 规范提交钩子（Conventional Commits） |
| `scripts/setup-hooks.ps1` / `.sh` | 一键启用提交钩子 |
| `CHANGELOG.md` | 版本更新记录 |
| `LICENSE` | MIT 开源许可证 |

## 🧭 本地开发流程

```bash
# 1. 克隆后先启用提交钩子（规范提交强制生效）
scripts/setup-hooks.ps1        # Windows PowerShell
# scripts/setup-hooks.sh        # macOS / Linux / Git Bash

# 2. 日常开发循环
git checkout -b feat/xxx       # 新功能开分支
git add .
git commit -m "feat: 添加 xxx 功能"   # 格式不符会被钩子拦截
git push
# 3. 在 GitHub 上开 Pull Request → CI 自动检查 → 合并
```

### Commit 规范（Conventional Commits）

```
<type>(<scope>): <描述>
```

| type | 含义 | 示例 |
|---|---|---|
| feat | 新功能 | `feat: 添加自动部署` |
| fix | 修复 bug | `fix(ci): 修复缓存失效` |
| docs | 文档 | `docs: 更新 README` |
| style | 格式（不影响逻辑） | `style: 统一缩进` |
| refactor | 重构（不改功能） | `refactor: 抽取公共函数` |
| perf / test / build / ci / chore / revert | 性能 / 测试 / 构建 / CI / 杂务 / 回滚 | |

## 🤖 自动化流水线（GitHub Actions）

当前 CI 做两件事，保证**第一天就全绿**：

1. **关键文件检查**：README / LICENSE / .gitignore 必须存在
2. **提交规范检查**：最近提交必须符合 Conventional Commits

> ✏️ **选定技术栈后**：在 `ci.yml` 里加一个语言专属 job 即可（Node 用 `setup-node` + `npm test`；Python 用 `setup-python` + `pytest`；示例见 `ci.yml` 底部注释）。

## 🗺️ 学习路线打卡

- [x] 阶段 1：Git 基础命令（init / add / commit / log）
- [x] 阶段 2：分支与 Pull Request 全流程
- [x] 阶段 3：[GitHub Pages 个人主页](https://frank2673.github.io/)（已上线 ✅）
- [x] 阶段 4：CI/CD 自动化（本仓已具备 ✅）
- [ ] 阶段 5：作品集精修与开源参与

## 🔗 相关仓库

| 仓库 | 说明 |
|---|---|
| [Frank2673.github.io](https://github.com/Frank2673/Frank2673.github.io) | 个人主页（零依赖静态站 + 质量检查 CI）· [在线访问](https://frank2673.github.io/) |
| [surface-watch](https://github.com/Frank2673/surface-watch) | 攻击面监控与基线差异：只在有变化时告警 |
| [header-forge](https://github.com/Frank2673/header-forge) | 安全响应头配置即代码：一次声明生成五平台配置并自证 |
| [engagement-ledger](https://github.com/Frank2673/engagement-ledger) | 授权凭证与防篡改审计日志：让「我有授权」变成可核验的证据 |
| **github-dev-workflow**（本仓） | GitHub 全流程自动化样板：规范提交、PR 模板、健康检查 CI |

---

*由 DeepSeek Harness 协助搭建 · 学习 GitHub 全流程自动化的第一个仓库*
