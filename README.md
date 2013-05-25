ぬるぽhub
==========

[ぬるぽHub](http://nullpohub.herokuapp.com/) は Githubのソースコードと関連するようなイベント用の開催支援サービスです。

これから作りたい機能
---------------------
- ユーザーがイベントに参加できる
- ユーザーが自分のGithubのコードをイベントに関連付けできる

開発者向け
-----------
ローカルで動かす場合、githubのアプリケーションを作成する必要がある。

1. Githubの画面右上の *Account settings* を開く
2. メニューから *Applications* を開く
3. *Register new application* でアプリを作成する

    ```
    Name: rails_local
    URL: http://localhost:3000/
    Callback URL: http://localhost:3000/
    ```

4. config/settings.local.yml を作成する
    ``` yaml
    github:
      key: "<Client ID>"
      token: "<Client Secret>"
    ```
