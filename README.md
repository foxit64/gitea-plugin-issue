# Gitea Plugin Issue for Woodpecker

## settings example:

```
pipeline:
  create-issue:
    image: foxit64/gitea-plugin-issue
    settings:
      gitea_url: "https://<GITEA-URL>"
      gitea_token:
        from_secret: gitea_token
      repoowner: "foo"
      reponame: "bar"
      title: "Issue created"
      comment: >
        Lorem Ipsum is simply dummy text
```
