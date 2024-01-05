token=$CIRCLE_TOKEN

declare -a arr=("circleci/android"
"circleci/circleci-cli@0.1.2"
"circleci/node@4.7"
"cypress-io/cypress@3.2.1"
"circleci/salesforce-sfdx@2.0.0"
"circleci/azure-cli@1.1.0"
"circleci/docker@0.5.13"
"circleci/build-tools@2.6.3"
"circleci/circleci-cli@0.1.8"
"circleci/os-detect@0.1"
"circleci/os-detect@0.2"
"circleci/gcp-cli@1.8.3"
"circleci/docker@1.5"
"circleci/gcp-cli@2.1.0"
"circleci/orb-tools@9.1"
"circleci/orb-tools@9.3.1"
"circleci/orb-tools@8.27.1"
"circleci/gcp-cli@1.8.1"
"circleci/jq@2.0"
"circleci/helm@0.1.0"
"circleci/kubernetes@0.4.0"
"circleci/aws-cli@1.3"
"circleci/aws-cli@3.1.5"
"circleci/aws-cli@0.1"
"circleci/helm@1.2"
"circleci/aws-cli@0.1.13"
"circleci/kubernetes@1.0"
"circleci/aws-code-deploy@2.0.0"
"circleci/aws-ecs@2.2.1"
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
"circleci/slack@4.5.2"
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
   circleci admin import-orb "$i" --host $CIRCLE_HOSTNAME --token $token --no-prompt
done
