# Linuxマシン用セットアップスクリプト

このセットアップスクリプトはLinuxマシン上でさまざまなパッケージとツールのインストールを自動化します。スクリプトはrootユーザーとして実行する必要があります。

## 前提条件

- `apt`パッケージ管理を持つLinuxマシン（Ubuntu、Debianなど）
- マシンへのrootアクセス

## 使用方法

1. `setup.sh`スクリプトをマシンにダウンロードします。
2. ターミナルを開き、`setup.sh`が存在するディレクトリに移動します。
3. スクリプトを実行可能にします：
   ```bash
   chmod +x setup.sh
   ```
4. rootとしてスクリプトを実行します：
   ```bash
   sudo ./setup.sh
   ```

### リモートまたはクラウドのLinuxマシンを使用する場合

スクリプトをリモートマシンにコピーするには、次のように実行します：

```bash
scp -i "path/to/your.pem" "path/to/setup.sh" username@remote_address:/path/to/remote/directory
```

リモートマシンにSSHで接続するには：

```bash
ssh -i "path/to/your.pem" username@remote_address
```

次に、スクリプトを実行するための次のコマンドを実行します：

```bash
chmod +x setup.sh
sudo ./setup.sh
```

## スクリプトは何をするのか？

- スクリプトがrootとして実行されているかどうかを確認する
- パッケージリストを更新する
- 既存のパッケージをアップグレードする
- コンパイラ、curl、wget、git、vimなどの基本的なビルドツールをインストールする
- Python3、pip、Pythonの`venv`モジュールをインストールする
- データサイエンス、機械学習、深層学習用のさまざまなPythonパッケージとライブラリをインストールする
- Node.jsをインストールする
- OpenJDK 11（Java）をインストールする
- Dockerをインストールする
- MySQLとPostgreSQLクライアントをインストールする
- `tree`と`ncdu`などの追加ツールをインストールする

## インストールされるパッケージとツール

### 基本的なビルドツール

- build-essential
- curl
- wget
- git
- vim
- tmux
- htop
- unzip

### Pythonとデータサイエンスツール

- python3
- python3-pip
- python3-venv
- numpy
- pandas
- matplotlib
- scikit-learn

### MLおよびDL用の追加Pythonパッケージ

- tensorflow
- keras
- pytorch
- scikit-image
- opencv-python
- jupyterlab
- seaborn
- plotly
- xgboost
- lightgbm
- nltk
- spacy
- gensim

### その他のツール

- Node.js
- OpenJDK 11
- Docker
- MySQLクライアント
- PostgreSQLクライアント
- tree
- ncdu
