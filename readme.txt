[実行例]
docker-compose run --rm app dotnet AppInspector.dll analyze -s /target/ApplicationInspector -f json -o /target/result.json

自動でブラウザを起動する都合のためか、htmlだと出力先の指定ができない。

対象のファイルはホスト側の ./target 以下に配置。コンテナ内部でマウントして参照される。
出力先を /target 以下に指定すれば、ホスト側で結果を確認することが可能。