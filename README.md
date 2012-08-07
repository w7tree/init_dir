init_dir
=================================

# read me

## setting

### Ruby install

operating environment：unknown
working bersion： ruby1.9.3 p125

### set alias

```.bashrc
# the following is an example
# set your directory path where you clone
alias init_html="ruby ~/init_html/init_html.rb"
alias reset_html="ruby ~/reset_html.rb"
```

## how to use

### reset_html

when command "init_html",
make the following dir and files at current directory.

- index.html -> basic html
- css/
  - reset.css -> style reset for cross browser
  - style.css -> css file for edit. but this dile is blank.
- js/
  - common.js -> js file for edit. but this dile is blank.
- img/

### reset_html

when command "init_html",
remove the following dir and files at current directory.
Be careful it completely remove.

- index.html
- css/
- js/
- img/




# はじめに

## 概要
WEBページ制作をはじめるまえに、ディレクトリ構造を作成するのがめんどくさい。
cssフォルダ、jsフォルダ、reset.cssの用意などなど。
毎回ベースとして使うようなファイルやフォルダをワンコマンドで生成するツール
あったら便利だな〜と思って、少しづつ作成しはじめました。
現状：制作総時間1h


### 今後つけたい機能

- 引数を受け取って、生成するファイルのパターン分けができる機能
- 作成するパターンやファイルを簡単に自作できる機能
- compass create をつかったsass機能
- consoleが使えない人ように、GUIで使えるようにする機能
- gemにしてrake起動できるようにする(やり方知らないので調べ中)
- etc...


## セッティング

### Rubyのインストール
対応バージョン：不明
動作確認：ruby1.9.3 p125

### コマンドのエイリアスを貼る

```.bashrc
# cloneしたinit_htmlフォルダの２つの.rbファイルにエイリアスを貼ります
alias init_html="ruby ~/init_html.rb"
alias reset_html="ruby ~/reset_html.rb"
```

## 使い方

### init_html

コンソール画面にてinit_htmlと入力すると、
カレントディレクトリに以下を生成します

- index.html -> 基本のhtmlファイルです。よく使うmetaタグなどを書いてます
- css/ -> .cssファイル用フォルダです
  - reset.css -> クロスブラウザ用スタイルリセットCSSです
  - style.css -> 編集するCSSです。中身は空です
- js/ -> .jsファイル用フォルダです。
  - common.js -> 編集するjsファイルです。中身は空です。
- img/ -> 画像ファイル用・フォルダです。

### reset_html

コンソール画面にてreset_htmlと入力すると、
カレントディレクトにある以下のフォルダと中身すべてを消去します。
完全に消去されるので注意して使って下さい。

- index.html
- css/
- js/
- img/
