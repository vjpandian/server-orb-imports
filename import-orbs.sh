#!/bin/bash
              
              
              
              echo "$CIRCLE_HOSTNAME"
              declare -A ignore_map
              ignore_map["circleci/aws-s3"]="3.1.0"
              ignore_map["circleci/orb-tools"]="9.3.1"
              
              mapfile -t orbs < orbs.txt
              
              for orb_namespace_name in "${orbs[@]}"; do
                namespace=$(echo "$orb_namespace_name" | cut -d/ -f1)
                orb_name=$(echo "$orb_namespace_name" | cut -d/ -f2)
                repo_name="${orb_name}-orb"
              
                github_repo="$GITHUB_API_HOSTNAME/repos/${namespace^}-Public/${repo_name}/tags"
              
                echo "Fetching tags for $orb_namespace_name from $github_repo ..."
              
                tags=$(curl -s "$github_repo" |
                  jq -r '.[].name' |
                  grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' || true)
              
                if [[ -z "$tags" ]]; then
                  echo " No valid semver tags found for $orb_namespace_name. Skipping."
                  continue
                fi
              
                for tag in $tags; do
                  version="${tag#v}"
                  skip_versions=${ignore_map["$orb_namespace_name"]:-}
                  for ignored in $skip_versions; do
                      if [[ "$version" == "$ignored" ]]; then
                         echo "Skipping ignored version $version of $orb_namespace_name"
                         continue 2
                      fi
                  done
                  orb_version="${orb_namespace_name}@${version}"
              
                  echo "Importing $orb_version ..."
                  circleci admin import-orb "$orb_version" --host "$CIRCLE_HOSTNAME" --token "$STAGING_API_TOKEN" --no-prompt
                done
              done
