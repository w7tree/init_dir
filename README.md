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
setting.sh
```

*setting.sh
ホームディレクトリに以下の二点を作成します
init_dirで使用するRakefileのシンボリックリンク
init_dirのシンボリックリンク

### 使い方

rake -T : 定義されているコマンドの一覧を表示します。
rake <taskname> : 自分で登録したtasknameのコマンドを実行します

### カスタマイズ方法

Rakefileを編集することでカスタマイズが可能です。

#### 定義されているタスク(コマンド)作成のためのメソッド

##### MakeFile.create(filename)

引数filenameに指定したファイルを、~/init_dir/source/の中から探し出します。
ファイルが見つかった場合、同名のファイルをカレントディレクトリに作成します
~/init_dir/source/に普段よく使うファイルを格納することで拡張することができます。


##### MakeDir.create(directories)

引数directoriesには、文字列と配列が指定できます。
1.文字列である場合、その文字列の名前のディレクトリを作成します。
2.配列である場合、配列の各要素の名前を使ったディレクトリを一括作成します。
