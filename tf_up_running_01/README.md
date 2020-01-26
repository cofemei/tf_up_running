

terraform init -backend-config="bucket=george-tf-up-running01" -backend-config="key=global/s3/terraform.tfstate" -backend-config="region=ap-northeast-1" -backend-config "access_key=AKIAS74ZU7JUIYVA7CMR" -backend-config "secret_key=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" -backend-config "dynamodb_table=george-tf-up-running01"

terraform init -backend-config="bucket=george-tf-up-running01" -backend-config="key=stage/data-stores/mysql/terraform.tfstate" -backend-config="region=ap-northeast-1" -backend-config "access_key=AKIAS74ZU7JUIYVA7CMR" -backend-config "secret_key=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" -backend-config "dynamodb_table=george-tf-up-running01"