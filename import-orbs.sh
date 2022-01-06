host=$V3_SERVER_HOST
token=$PERSONAL_API_TOKEN

declare -a arr=("circleci/android"
"circleci/aws-cli"
"circleci/aws-code-deploy"
"circleci/aws-ecr"
"circleci/aws-ecs"
"circleci/aws-eks"
"circleci/aws-elastic-beanstalk"
"circleci/aws-parameter-store"
"circleci/aws-s3"
"circleci/aws-sam-serverless"
"circleci/azure-acr"
"circleci/azure-aks"
"circleci/azure-cli"
"circleci/bats"
"circleci/browser-tools"
"circleci/build-tools"
"circleci/circleci-cli"
"circleci/continuation"
"circleci/docker"
"circleci/flutter"
"circleci/gcp-binary-authorization"
"circleci/gcp-cli"
"circleci/gcp-cloud-run"
"circleci/gcp-gcr"
"circleci/gcp-gke"
"circleci/github-cli"
"circleci/github-super-linter"
"circleci/go"
"circleci/gradle"
"circleci/helm"
"circleci/heroku"
"circleci/hugo"
"circleci/irc"
"circleci/jira"
"circleci/jq"
"circleci/kubernetes"
"circleci/lein-nvd"
"circleci/macos"
"circleci/maven"
"circleci/microsoft-msix"
"circleci/microsoft-psscriptanalyzer"
"circleci/node"
"circleci/orb-tools"
"circleci/os-detect"
"circleci/path-filtering"
"circleci/perl"
"circleci/php"
"circleci/python"
"circleci/redhat-openshift"
"circleci/rememborb"
"circleci/ruby"
"circleci/rust"
"circleci/salesforce-apex"
"circleci/salesforce-sfdx"
"circleci/serverless-framework"
"circleci/shellcheck"
"circleci/slack"
"circleci/spinnaker"
"circleci/sumologic"
"circleci/terraform"
"circleci/twilio"
"circleci/upx"
"circleci/waypoint"
"circleci/windows"
"circleci/windows-defender")

for i in "${arr[@]}"
do
   #echo "$i"
   circleci admin import-orb "$i" --host $host --token $token --no-prompt
done
