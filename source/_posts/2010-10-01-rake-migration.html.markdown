---
layout: post
title: Rake Migration
tags: Rake
date: 01/10/2010
categories: rake
description: rake migration
keywords: rails, rake, migration
---

<div class="entry">

  <p>Hi,</p>

  <p>I have started working on a plugin which helps rails projects to maintain the list of rake tasks.</p>

  <p>Here what i am doing is we are maintaining files using version numbers.</p>

  <p>As one rake command will tell us what is left to be run in a team environment.</p>

  <p>Suppose i have written a rake task or some ruby code to be execute on the db in a order.</p>

  <p>Other team member also want’s to run that task on their DB and as well as on production environments.</p>

  <p>What this plugin is doing is, when you want to add some ruby code or want’s to run some ruby code in a
    sequence.</p>

  <p>Just create an empty ruby file using rake migration generator and add ruby stuff there.</p>

  <p>if you have migrate that file into the DB. Which means that you have applied that ruby code into your environments.
    Other developer can take your changes and just migrate those things in their DB also.</p>

  <p>Idea is same like as DB Migrations are working.</p>

  <p>Here is the URL for plugin</p>

  <p>
    <a title="http://github.com/arunagw/rake_migration" href="http://github.com/arunagw/rake_migration" target="_blank">http://github.com/arunagw/rake_migration</a>
  </p>

  <p>This plugin is under development currently.</p>

  <p>Cheers,</p>

  <p>Arun Agrawal</p>

</div>
