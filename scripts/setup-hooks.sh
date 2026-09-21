#!/bin/sh
# 启用仓库级 Git 钩子（commit-msg 规范校验）
# 用法: sh scripts/setup-hooks.sh
git config core.hooksPath .githooks && \
  echo "✅ 已启用 .githooks 提交钩子（规范提交强制生效）" || \
  { echo "❌ 配置失败" >&2; exit 1; }
