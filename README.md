# README

This is a small app to demonstrate an issue with Rails asset pipeline and .jpeg files.

## Issue I am referring to

https://github.com/rails/sprockets-rails/issues/304

## Ruby version

2.7.1

## Heroku CLI version

heroku/7.43.0 darwin-x64 node-v12.16.2

## To reproduce:

Deploy the app to production. There is no database to worry about.

You will be able to choose an image to view. Any jpegs will break the app with something like:

```
ActionView::Template::Error (The asset "cups/goldcup.jpeg" is not present in the asset pipeline.
```

### Clues

Setting config.assets.compile = true in config/environments/production.rb and redeploying fixes the issue.

Also, renaming jpeg files to jpg fixes the issue.


### Command line deployment on Heroku:

```
git clone https://github.com/david-mears/jpeg-issue-demo.git
git cd jpeg-issue-demo
heroku login
heroku create
git push heroku illustrate-jpeg-issue:master
```

The resulting deployment for me was at https://sheltered-beach-99525.herokuapp.com/, which is up at the time of writing. Heroku hobby apps sleep when they haven't been touched for 30 minutes, so give it a minute to wake up.
