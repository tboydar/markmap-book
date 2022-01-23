## 專案目的
- 能線上用心智圖做分享討論
- 希望原始內容不要被平台綁死

## 專案簡介
- 利用 markmap 工具將markdown 文件自動轉成 html,放在github page供瀏覽


## 建議流程
1. 可用線上編輯預覽結果 (https://markmap.js.org/repl)
2. commit 文章 : [範例](https://github.com/csongs/markmap-book/blob/main/book_sources/articles/sample.md)
3. 執行github action,即可看成果 https://csongs.github.io/markmap-book/mindmap/articles/sample.html

## hugo
- 引用 https://github.com/lxndrblz/anatole
- 範例: https://csongs.github.io/markmap-book/
- 更換主題
	- 選自己喜歡的主題
	```
	git submodule add {git位置} themes/{主題名稱}

	cp -a themes/{主題名稱}/exampleSite/* .
	```
	- EX:
	```
	git submodule add https://github.com/lxndrblz/anatole.git themes/anatole

	cp -a themes/anatole/exampleSite/* .
	```
- 文章用utf-8,否則出現亂碼