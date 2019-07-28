serverspec_study
====

## What is this?

エンジニアリングスクール[RaiseTech](https://raise-tech.net/)のAWSフルコース第9回講座の課題：「Serverspecを使用してリソースのテスト」を実施したものです。
- 本課題に関して詳細な手順書等のドキュメントはスクールより提供されておらず、主に検索サイトでヒットする情報を元に作成しています。


## 構成

- EC2,RDS,ALB,S3の構成
- 詳細はlayout/layout.pngをご覧ください。

## 動作環境

- Amzxon Linux 2 (ami-0c3fd0f5d33134a76)
- RDS (エンジンバージョン MySQL 5.7.22)
- rbenv 1.1.2-2-g4e92322
- ruby 2.6.3p62 (2019-04-16 revision 67580)
- Rails 5.2.3
- nginx version: nginx/1.12.2
- テスト対象のEC2内(localhost)にて実行

## 導入

- serverspec-initが実行できる環境で、*_spec.rbをサンプルのあるフォルダにコピーして使用できます。
- s3への書き込み権限が必要です。/mnt/s3以外にマウントした場合は適宜変更してください。
- ALBはHTTPコードを比較しています。200以外で確認したい場合は適宜変更してください。

## 参考サイト

- [Serverspecでよく使うテストの書き方まとめ](https://qiita.com/minamijoyo/items/467ddd13c0cab15330bf)

- [serverspecのリソースタイプ・マッチャー](https://qiita.com/ando-masaki/items/e02960789c7a4e0c4d20)

## 作成者

[@miima_17](https://twitter.com/miima_17)