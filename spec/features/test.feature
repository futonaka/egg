Feature: Turnip でテストが実行できる
  Scenario: 外部サイトにアクセス出来る
    When 'http://google.co.jp' にアクセスする
    Then 'Google 検索' ボタンが表示されている

  Scenario: 失敗するテスト
    When 'http://google.co.jp' にアクセスする
    Then 'Google 検索不可能' ボタンが表示されている
