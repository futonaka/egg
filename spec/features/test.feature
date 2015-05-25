Feature: Turnip テストサンプル
  Scenario: Yahoo! で検索を行う
    When 'http://www.yahoo.co.jp' にアクセスする
    Then '検索' ボタンが表示されている
    When 'srchtxt' に 'アジャイル' を設定する
    When '検索' ボタンをクリックする
    Then 'アジャイルソフトウェア開発' と表示されている
    And  ページタイトルに '「アジャイル」の検索結果 - Yahoo!検索' と表示されている

  Scenario: 失敗するテスト例
    When 'http://google.co.jp' にアクセスする
    Then 'Google 検索不可能' ボタンが表示されている
