# MyTimer

iosアプリのパフォーマンス計測において、なるべく少ないコード量で時間計測をするために作成したクラスです。これで幸せな最適化ライフを送りましょう。

# Usage

以下のように時間を計測することが出来ます。

```.m
    MyTimer * timer = [MyTimer start:@"some title"]; // タイマーを生成・スタート

    // do something
    ...

    [timer finish]; // MyTimer: finished in 0.200368 sec (some title)
                    // のようなログを出力
```

以下のようにすると、ラップタイムを計測することができます。

```.m
    MyTimer * timer = [MyTimer start:@"some title"]; // タイマーを生成・スタート

    // do something 1
    ...
    [timer rap:@"rap 1"]

    // do something 2
    ...
    [timer rap:@"rap 2"]

    // do something 3
    ...
    [timer rap:@"rap 3"]

```

また、コード断片にかかる時間をそれぞれ計測するにはintervalメソッドを使えます。

```.m
    MyTimer * timer = [MyTimer start:@"some title"]; // タイマーを生成・スタート

    // do something 1
    ...
    [timer interval:@"interval 1"]

    // do something 2
    ...
    [timer interval:@"interval 2"]

    // do something 3
    ...
    [timer interval:@"interval 3"]

```

これで、それぞれの`// do something`にかかる時間を計測します。

