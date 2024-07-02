# Gitea Plugin Issue

## settings example:

```
pipeline:
  create-issue:
    image: foxit64/gitea-plugin-issue
    settings:
      gitea_url: https://<GITEA-URL>
      gitea_token:
        from_secret: gitea_token
      title: Issue created
      comment: >
        Lorem Ipsum is simply dummy text
```
