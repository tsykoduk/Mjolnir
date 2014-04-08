Mjölnir
=======

A Heroku based distributed load testing tool.

Configuration variables should be set as follows:

  - `BUILDPACK_URL`: Specify the Heroku Ruby buildpack (`"https://github.com/heroku/heroku-buildpack-ruby"`)
  - `TARGETS`: A comma delimited list of targets to hit (ex. `"http://my_cool_site.com/first_action,http://my_cool_site.com/second_action"`)
  - `WORKERS`: The number of workers processes (default: `12`)
  - `LENGTH` The number of times each worker will hit each endpoint; use `0` to run continuously (default: `10000`)

Then use the following command in the `Procfile`:

    program: ruby ./killtheweb.rb start $TARGETS --workers=$WORKERS --length=$LENGTH

Each dyno should spin up `$WORKERS` assaults on the endpoints provided. From my testing on 1x dyno, each worker will generate about 500 RPM, and 12 should safely fit on a 1x dyno. I have not tested on 2x or Px dynos, so YMMV.

Example:

    heroku config:set \
      BUILDPACK_URL="https://github.com/heroku/heroku-buildpack-ruby" \
      TARGETS="http://my_cool_site.com/first_action,http://my_cool_site.com/second_action,http://my_cool_site.com/third_action" \
      WORKERS=12 \
      LENGTH=10000
    
    heroku scale program=5

This will assault the three action endpoints with 60 concurrent worker. Each worker will access the URLs given 10000 times, and then quietly die. You'll need to scale down and up or restart the dynos to rerun the test.

