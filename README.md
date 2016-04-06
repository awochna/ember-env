# ember-env #

Dockerfile for an ember-cli environment.

This docker image is meant to provide a suitable environment for development of an Ember application using ember-cli and friends.
It doesn't use an `ENTRYPOINT` and the default command is `bash`, so it really just gives you the environment.
It's suitable for use in Continuous Integration or when you want to make use of node, npm, bower, or ember in the environment without having to install anything on your workstation.

It uses:

* ember-cli 2.4.3
* the latest version of bower
* PhantomJS 1.9.8 (see issue #3 for explanation)
* the latest version of node LTS
* Ubuntu 14.04 LTS

Use it from your ember project directory like so:

    docker run -it -P -v "$PWD":/usr/src/app awochna/ember-env


It exposes ports 4200 (for `ember serve`) and 35729 (for livereload), so with the above `-P` flag, you can point your browser to `http://localhost:4200` like you would with local development.

It has `NODE_ENV` set to `production` by default, so you may want to change that.
I'm not here to judge.
