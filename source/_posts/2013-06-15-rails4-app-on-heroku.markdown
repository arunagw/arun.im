---
layout: post
title: "Rails4 app on heroku"
date: 2013-06-15 21:43
comments: true
categories: fix heroku rails ruby
description: rails4 app on heroku
keywords: rails4, heroku
---

Updated : [Heroku](https://blog.heroku.com/archives/2013/6/17/ruby-2-default-new-aps) has updated to use ruby2.0. by default.

If you are deploying a new rails4 app on heroku that might fail. And you will get following error.

```
----> Ruby/Rails app detected
-----> Installing dependencies using Bundler version 1.3.2
       Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin --deployment
       Fetching gem metadata from https://rubygems.org/..........
       Fetching gem metadata from https://rubygems.org/..
       Installing rake (10.0.4)
       Installing i18n (0.6.4)
       Installing minitest (4.7.4)
       Installing multi_json (1.7.7)
       Installing atomic (1.1.9)
       Installing thread_safe (0.1.0)
       Installing tzinfo (0.3.37)
       Installing activesupport (4.0.0.rc1)
       Gem::InstallError: activesupport requires Ruby version >= 1.9.3.
       An error occurred while installing activesupport (4.0.0.rc1), and Bundler cannot
       continue.
       Make sure that `gem install activesupport -v '4.0.0.rc1'` succeeds before
       bundling.
 !
 !     Failed to install gems via Bundler.
 !

 !     Push rejected, failed to compile Ruby/Rails app
```

In short, it says

```
Gem::InstallError: activesupport requires Ruby version >= 1.9.3.
```

Problem is that heroku uses ruby 1.9.2 by default

To check this run this command from your app

```
heroku run ruby -v
```

The output will be 
```
ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-linux]
```

Solution is simple, we need to attach ruby-version with app to tell heroku to use ruby 1.9.3 or higher because rails4 works with ruby-1.9.3 or higher.

Now add this following in your app Gemfile

```
ruby '1.9.3'
```

This will force heroku to use your desired ruby. Here we are using 1.9.3

This solution will work for your rails4 versions(4.0.0.beta1, 4.0.0.rc1, 4.0.0.rc2) apps.
