---
layout: post
title: Using git revert
tags: Git
date: 05/10/2010
---

<div class="entry">

  <p>Hi,</p>

  <p>We are doing revert our code in different different ways.</p>

  <p style="text-align: left;">The basic way of doing this using <em>git revert</em> command.</p>

  <p>
    <span class="Apple-style-span" style="border-collapse: separate; color: #000000; font-family: Times; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; font-size: medium;"><span class="Apple-style-span" style="font-family: verdana,sans-serif; font-size: 11px; text-align: left;"></span></span>
  </p>

  <p>The
    <em>git revert commit </em>command is substantially similar to the command <em>git cherry-pic commit </em>with one
    important difference: it applies the <em>inverse </em>of the given <em>commit. </em>Thus, this command is used to
    introduce a new commit that reverses the effects of a given commit.</p>

  <p>My Current master status</p>

  <pre>
    <code>A => B => C => D => E</code>
  </pre>

  <p>If we are reverting commit D</p>

  <p>Then it will become</p>

  <pre>
    <code>
      A => B => C => D => E => D”
    </code>
    <code>Here D” is the commit reverse of D</code>
  </pre>

  <p>Arun</p>

</div>
