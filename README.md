serverspec_study
====

## What is this?

エンジニアリングスクール[RaiseTech](https://raise-tech.net/)のAWSフルコース第9回講座の課題：「Serverspecを使用してAWS上に構築したリソースのテスト」を実施したものです。
- 課題を進める為の操作手順書やドキュメントの提供は受けず、主に検索サイトで入手可能な情報を元に作成しています。


## 構成・条件

- EC2,RDS,ALB,S3の構成
- 構成図はlayout/layout.pngをご覧ください。
- テストはテスト対象のEC2内(localhost)にて実行

## 動作環境

- Amzxon Linux 2 (ami-0c3fd0f5d33134a76)
- RDS (エンジンバージョン MySQL 5.7.22)
- rbenv 1.1.2-2-g4e92322
- ruby 2.6.3p62 (2019-04-16 revision 67580)
- Rails 5.2.3
- nginx version: nginx/1.12.2

## 導入

```
$ git clone https://github.com/miima17/serverspec_study.git
```
- serverspec-initが実行できる環境で、*_spec.rbをサンプルのあるフォルダにコピーして使用できます。
- s3への書き込み権限が必要です。/mnt/s3以外にマウントした場合は適宜変更してください。
- ALBはHTTPコードを比較しています。200以外で確認したい場合は適宜変更してください。

## 参考サイト

- [Serverspecでよく使うテストの書き方まとめ](https://qiita.com/minamijoyo/items/467ddd13c0cab15330bf)

- [serverspecのリソースタイプ・マッチャー](https://qiita.com/ando-masaki/items/e02960789c7a4e0c4d20)

## 作成者

[MasatoshiMizumoto](https://github.com/MasatoshiMizumoto)
