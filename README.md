# Selenium Grid Nodes - Chrome/Firefox

Selenium Nodes configured to run Google Chrome or Mozilla Firefox with the ability to specify network adapter.

## Dockerfile Chrome

[`bg85/docker-selenium` Dockerfile-chrome](https://github.com/bg85/docker-selenium/blob/master/Dockerfile-chrome)

## Dockerfile Firefox

[`bg85/docker-selenium` Dockerfile-firefox](https://github.com/bg85/docker-selenium/blob/master/Dockerfile-firefox)

## How to use this image

First, you will need a Selenium Grid Hub that the Node will connect to.

```
$ docker run -d -P --name selenium-hub selenium/hub
```

Once the hub is up and running will want to launch nodes that can run tests. You can run as many nodes as you wish.

```
$ docker run -d --link selenium-hub:hub bg85/node-chrome
```
or
```
$ docker run -d --link selenium-hub:hub bg85/node-firefox
```

## What is Selenium?
_Selenium automates browsers._ That's it! What you do with that power is entirely up to you. Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that. Boring web-based administration tasks can (and should!) also be automated as well.

Selenium has the support of some of the largest browser vendors who have taken (or are taking) steps to make Selenium a native part of their browser. It is also the core technology in countless other browser automation tools, APIs and frameworks.

See the Selenium [site](http://docs.seleniumhq.org/) for documation on usage within your test code.

## License

View [license information](https://github.com/SeleniumHQ/docker-selenium/blob/master/LICENSE.md) for the software contained in this image.
