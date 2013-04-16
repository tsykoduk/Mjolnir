Mjolnir
=======

Heroku based distrubited load testing tool

Use the null buildpack for this: https://github.com/ryandotsmith/null-buildpack

Give it a config var of a space delimited list of targets to hit. Each dyno should spin up 10 assults on the urls provided.

example:

    heroku config TARGETS="http://my_cool_site.com/first_action http://my_cool_site.com/second_action http://my_cool_site.com/third_action"
    heroku scale program=5

will assualt the three action endpoints with 50 concurent users and some level of randomness.

