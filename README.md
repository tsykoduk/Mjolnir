Mjölnir
=======

Heroku based distrubited load testing tool

Use the null buildpack: https://github.com/ryandotsmith/null-buildpack

Give it a config var of a space delimited list of targets to hit. Each dyno should spin up 20 assults on the urls provided.

example:

    heroku config TARGETS="http://my_cool_site.com/first_action http://my_cool_site.com/second_action http://my_cool_site.com/third_action"
    heroku scale program=5


will assault the three action endpoints with 100 concurent users. Each user will access the URLs given 1000 times, and then quietly die. You'll need to scale down and up or restart the dynos to rerun the test.


