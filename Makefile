.PHONY: test build

default: help

# new:
# 	node build/bin/new.js $(filter-out $@,$(MAKECMDGOALS))

# del:
# 	node build/bin/delete.js $(filter-out $@,$(MAKECMDGOALS))
#
create-md:
	node build/.bin/createMd.js

dist-prettier:
	npm run dist:prettier

dist-style:
	npm run dist:style

deploy:
	npm run deploy

dev:
	npm run dev

dist:
	npm run dist

lint:
	npm run lint

test:
	npm run test

test-coverage:
	npm run test:coverage

release:
	npm run release

help:
	@echo "   \033[35m\033[0m \033[1m\033[0m"
	@echo "   \033[35mmake\033[0m \033[0m\t\033[0m\t\033[0m\t\033[0m\t\033[1m命令使用说明\033[0m"
	@echo "   \033[35m\033[0m \033[1m\033[0m"
	@echo "   \033[35mmake install\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  安装依赖"
	@echo "   \033[35mmake create-md\033[0m\t\033[0m\t\033[0m\t---  创建文档文件"
	@echo "   \033[35mmake dist-style\033[0m\t\033[0m\t\033[0m\t---  style打包"
	@echo "   \033[35mmake build-prettier\033[0m\t\033[0m\t\033[0m\t---  压缩打包"
	@echo "   \033[35mmake deploy\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  gp文档发布"
	@echo "   \033[35mmake dist\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  集体打包"
	@echo "   \033[35mmake test\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  unit测试"
	@echo "   \033[35mmake test-coverage\033[0m\t\033[0m\t\033[0m\t---  打开覆盖率测试页面"
	@echo "   \033[35mmake release\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  发布release"
	@echo "   \033[35mmake dev\033[0m\t\033[0m\t\033[0m\t\033[0m\t---  开发模式"
	@echo "   \033[35m\033[0m \033[1m\033[0m"
	# @echo "   \033[35mmake new <component-name> [中文名]\033[0m\t---  创建新全局组件 生成对应文件  例如 'make new button '按钮'"
	# @echo "   \033[35mmake del <component-name> \033[0m\t\033[0m\t---  删除组件 删除对应文件  例如 'make del button'"

