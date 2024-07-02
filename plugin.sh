#!/usr/bin/env sh

# test environment variables
if [ -z "${PLUGIN_GITEA_URL}" ]; then
  echo "You must provide a Gitea URL"
  exit 1
fi
if [ -z "${PLUGIN_GITEA_TOKEN}" ]; then
  echo "You must provide a Gitea TOKEN"
  exit 1
fi
if [ -z "${PLUGIN_REPOOWNER}" ]; then
  echo "You must provide an repo owner"
  exit 1
fi
if [ -z "${PLUGIN_REPONAME}" ]; then
  echo "You must provide a repo name"
  exit 1
fi
if [ -z "${PLUGIN_TITLE}" ]; then
  echo "You must provide a issue title"
  exit 1
fi
if [ -z "${PLUGIN_COMMENT}" ]; then
  echo "You must provide a comment"
  exit 1
fi

# create issue
curl -S -s -X 'POST' "${PLUGIN_GITEA_URL}"/api/v1/repos/"${PLUGIN_REPOOWNER}"/"${PLUGIN_REPONAME}"/issues \
-H 'accept: application/json' \
-H 'Content-Type: application/json' \
-H 'Authorization: token '"${PLUGIN_GITEA_TOKEN}" \
-d '{ "title": "'"${PLUGIN_TITLE}"'", "body": "'"${PLUGIN_COMMENT}"'" }'
