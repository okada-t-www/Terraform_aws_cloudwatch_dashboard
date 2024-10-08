# Terraform_aws_cloudwatch_dashboard
## 主なtfファイルとコード内容
| ファイル名 | 説明 | 目的 |
|------------|------|------|
| `main.tf` | メイン設定ファイル | コアとなるインフラストラクチャリソース（Cloudwatchダッシュボードのメトリクス設定）を定義します |
| `variables.tf` | 変数定義 | Terraform設定全体で使用される入力変数を宣言します |
| `terraform.tfvars` | 変数割り当て | `variables.tf`で定義された変数に値を設定します |
| `outputs.tf` | 出力定義 | 設定適用後に出力すべき値を指定します |
| `providers.tf` | プロバイダー設定 | 必要なプロバイダー（AWSなど）とそのバージョンを設定します |
| `backend.tf` | バックエンド設定 | Terraformの状態をどこにどのように保存するか（S3バケットなど）を定義します |
| `data.tf` | データソース定義 | 既存のリソース情報を取得するためのデータソースを宣言します |
| `locals.tf` | ローカル値定義 | Terraform設定内で使用するローカル変数を定義します |
| `modules/` | モジュールディレクトリ | 共通のインフラストラクチャパターンのための再利用可能なTerraformモジュールを含みます |

## 主要なファイルの詳細

- **main.tf**: これは主要な設定ファイルでほとんどのリソース定義が含まれています。全体的なインフラストラクチャのセットアップを調整します。

- **variables.tf**: Terraform設定全体で使用できるすべての入力変数を宣言します。これにより、柔軟で再利用可能なコードが可能になります。

- **terraform.tfvars**: `variables.tf`で宣言された変数の実際の値を含みます。このファイルは通常gitignoreされ、環境ごとに異なります。

- **outputs.tf**: Terraformが設定を適用した後に出力すべき値を定義します。これは重要な情報を表示したり、Terraform設定間で値を渡したりするのに便利です。

- **providers.tf**: Terraform設定に必要なプロバイダーを指定し、その設定をセットアップします。

- **backend.tf**: 、Terraformが「状態ファイル」と呼ばれる重要な情報をどこに保存するかを指定するファイル。大規模なプロジェクトでも安全かつ効率的にインフラ管理が実現可能です。

- **data.tf**: Terraformによって作成されていない既存のリソースに関する情報を取得するために使用されます。

- **locals.tf**: Terraform設定全体で使用できるローカル変数を定義します。可読性向上に便利です。

- **modules/**: カスタムTerraformモジュールを含むディレクトリです。モジュールは、より良い組織化と再利用性のために、リソースグループをカプセル化するために使用されます。

## Cloudwatchダッシュボード作成に向けた汎用的なディレクトリ構造イメージ
```
project-root/
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf (オプション)
```
