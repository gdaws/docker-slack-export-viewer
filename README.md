# Slack Export Viewer

View Slack export data using the [hfaran/slack-export-viewer](https://github.com/hfaran/slack-export-viewer) app running inside a docker container.

## Build Image

1. Copy the export zip file into the build directory and rename it to data.zip
2. Run `docker build . -t slack-export-viewer:export-xx` 

## Image Distribution

For when you don't have convenient access to a public/private repository and you wish to run the image from another machine you can package the image into an archive file:

1. On the build machine run `docker save -o slack-export-viewer_export-xx.tar slack-export-viewer:export-xx`
2. Transfer the image archive file to the install machine
3. On the install machine run `docker load -i slack-export-viewer_export-xx.tar`

## Run Container

```
docker run -p"8080:80" slack-export-viewer:export-xx
```

The application is accessible at http://localhost:8080
