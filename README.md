# 🐹 Haskell 学習環境（Docker Compose）

このリポジトリは、Mac 上で Haskell を学習するための Docker Compose 環境を提供します。  
`ghci` を使って REPL 操作しながら Haskell を学べます。

---

## 📂 ディレクトリ構成

```
haskell-docker/
├── Dockerfile
├── docker-compose.yml
└── app/
    └── Main.hs  # 必要に応じてソースコードを追加
```

---

## 🛠️ セットアップ手順

1. リポジトリをクローンまたは作成
2. ターミナルでこのディレクトリに移動

```bash
cd haskell-docker
```

3. Docker イメージをビルドしてコンテナを起動

```bash
docker compose up -d --build
```

4. コンテナに入る

```bash
docker compose exec haskell bash
```

5. `ghci` を起動

```bash
ghci
```

---

## 💡 GHCi（REPL）の使い方

```haskell
Prelude> 1 + 2
3
```

### 🔚 GHCi の終了方法

- コマンドで終了：

  ```haskell
  Prelude> :quit
  ```

  または

  ```haskell
  Prelude> :q
  ```

- キーボードショートカットで終了：

  ```
  Ctrl + D
  ```

---

## ▶️ ファイルの作成と実行

```bash
# ファイル作成
echo 'main = putStrLn "Hello, Haskell!"' > Main.hs

# 実行
runghc Main.hs
```

---

## 📦 オプション

必要に応じて `stack` や `cabal` をインストールしてプロジェクト管理も可能です。  
Dockerfile を編集してツールを追加してください。

---

## ✅ 参考

- [GHC - The Glasgow Haskell Compiler](https://www.haskell.org/ghc/)
- [Haskell 入門](https://www.haskell.org/documentation/)
