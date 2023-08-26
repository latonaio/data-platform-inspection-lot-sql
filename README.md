# data-platform-inspection-lot-sql

data-platform-inspection-lot-sql は、データ連携基盤において、品質検査ロットデータを維持管理するSQLテーブルを作成するためのレポジトリです。 

## 前提条件  
data-platform-inspection-lot-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sqlの設定ファイル

data-platform-inspection-lot-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-inspection-lot-sql-header-data.sql（データ連携基盤 品質検査ロット - ヘッダデータ）
* data-platform-inspection-lot-sql-header-doc-data.sql（データ連携基盤 品質検査ロット - ヘッダ文書データ）
* data-platform-inspection-lot-sql-spec-general-data.sql（データ連携基盤 品質検査ロット - スペック一般データ）
* data-platform-inspection-lot-sql-spec-detail-data.sql（データ連携基盤 品質検査ロット - スペック詳細データ）
* data-platform-inspection-lot-sql-component-composition-data.sql（データ連携基盤 品質検査ロット - 構成品目構成物質データ）
* data-platform-inspection-lot-sql-inspection-data.sql（データ連携基盤 品質検査ロット - 品質検査データ）
* data-platform-inspection-lot-sql-operation-data.sql（データ連携基盤 品質検査ロット - 作業データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
