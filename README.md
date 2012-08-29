init dir
=========

最終更新: 2012/08/28

## Japanese

### 概要

よく使うディレクトリやファイルの作成をrakeタスクで一括作成するためのツールです。
Rakeタスクを追記する、sourceファイルを自分で追加することで自由にカスタマイズが可能です。

例:webページを作る際は、いつも
- css
- img
- js
のディレクトリを作成し、自分が作ったテンプレートである
- reset.css
- common.css
- index.html
をコピーして作っている。そういった下準備がワンコマンドで可能です。

```
rake html:basic
```



### 初期設定(Mac)

```
git clone
cd init_dir
ruby setting.rb
```

*setting.rb
ホームディレクトリに以下の二点を作成します
init_dirで使用するRakefileのシンボリックリンク
init_dirのシンボリックリンク

### 使い方

rake -T : 定義されているコマンドの一覧を表示します。
rake <taskname> : 自分で登録したtasknameのコマンドを実行します

### カスタマイズ方法

init_dir/task/ ディレクトリ内に、.rb形式のファイルを作成して中に記述することでタスクを追記できます

#### 定義されているタスク(コマンド)作成のためのメソッド

##### MakeFile.create(filename)

引数filenameに指定したファイルを、~/init_dir/source/の中から探し出します。
ファイルが見つかった場合、同名のファイルをカレントディレクトリに作成します
~/init_dir/source/に普段よく使うファイルを格納することで拡張することができます。
ディレクトリの中にファイルを作成する場合は、
同名のディレクトリをsourceファイル内に設置し、その中にファイルを置く必要があります
*改善予定


##### MakeDir.create(directories)

引数directoriesには、文字列と配列が指定できます。
1.文字列である場合、その文字列の名前のディレクトリを作成します。
2.配列である場合、配列の各要素の名前を使ったディレクトリを一括作成します。

### 初期設定タスク

#### rake html:basic

基本的なWEBページ作成時のディレクトリセットを作ります

- index.html(よく使うmetaタグなど設置済み)
- css/
- css/reset.css(Eric Meyer's "Reset CSS" 2.0)
- js/
- img/

#### rake html:jquery

html:basicにjqueryのファイルを加えたものです。
ローカルファイルにjqueryを設置しています。
jqueryのバージョンは1.7.2で、形式はminファイルです。

- index.html(よく使うmetaタグなど設置済み)
- css/
- css/reset.css(Eric Meyer's "Reset CSS" 2.0)
- js/
- js/jquery-1.7.2.min.js
- img/

#### rake html:tbs

twitter-boot-strapが使えるHTMLの初期セットです。
