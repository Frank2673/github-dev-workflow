# Changelog

本仓库所有重要变更都记录在此文件。格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，版本号遵循 [SemVer](https://semver.org/lang/zh-CN/)。

## [Unreleased]

### Added
- 初始化仓库骨架：README / LICENSE / .gitignore / PR 模板
- 规范提交钩子（Conventional Commits）：`.githooks/commit-msg`
- CI 流水线：关键文件检查 + 提交规范检查 + workflow YAML 校验

### Changed
- README「学习路线打卡」：阶段 1–4 全部勾选，阶段 3 补上个人主页的在线地址与仓库链接
- README 新增「相关仓库」表：登记个人主页与三个安全方向项目（surface-watch / header-forge / engagement-ledger），并说明它们是独立发布的兄弟仓、本仓只做索引与流程样板
- `.gitignore` 增加「独立仓库」忽略段：五个兄弟仓各有自己的 `.git`，不与本仓混合跟踪

### Fixed
- README 结构表与 CI 徽章已引用 `.github/workflows/ci.yml`，但该文件未随首次提交的仓库骨架落地 —— 补上 CI 流水线文件，使结构表的声明与仓库实际内容一致
