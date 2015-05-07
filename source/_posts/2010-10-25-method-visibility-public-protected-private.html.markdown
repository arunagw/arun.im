---
layout: post
title: Method Visibility Public, Protected, Private
tags: Ruby
date: 25/10/2010
categories: ruby
---

<div class="entry">

  <p class="docText"><strong>Instance<a name="ch07-methodsvisibility"></a><a name="I_indexterm7_d1e24327"></a>
    methods<a name="ch07-publicmethod"></a><a name="ch07-private"></a><a name="ch07-protected"></a><a name="may be"></a>
    may be&nbsp;<span class="docEmphasis">public</span>,&nbsp;<span class="docEmphasis">private</span>,
    or&nbsp;<span class="docEmphasis">protected</span></strong><a name="other object"></a>.</p>

  <p class="docText">
  </p>

  <p class="docText"><a name="public unless"></a>Methods are normally <strong>public</strong> unless they are explicitly
    declared to be private or protected. One exception is the&nbsp;<tt>initialize</tt>
    method<a name="I_indexterm7_d1e24354"></a><a name="any "></a>, which is always implicitly private. Another exception
    is any “global” method<a name="I_indexterm7_d1e24360"></a><a name="class definition"></a> declared outside of a
    class definition—those methods are defined as private instance methods
    of&nbsp;<tt>Object</tt><a name="be invoked"></a>. A public method can be invoked from anywhere—there are no
    restrictions on its use.</p>

  <p class="docText"><a name="of a"></a>A <strong>private</strong> method is internal to the implementation of a class,
    and it can only be called by other instance methods of the class (or, as we’ll see later, its subclasses). Private
    methods are implicitly invoked on&nbsp;<tt>self</tt><a name="an object"></a>, and may not be explicitly invoked on
    an object. If&nbsp;<tt>m</tt> is a private method, then you must invoke it in<a name="I_indexterm7_d1e24377"></a>
    <span class="docEmphasis">functional style</span> as&nbsp;<tt>m</tt>. You cannot write&nbsp;<tt>o.m</tt> or even&nbsp;<tt>self.m</tt>.
  </p>

  <p class="docText"><a name="in that"></a>A <strong>protected</strong> method is like a private method in that it can
    only be invoked from within the implementation of a class or its subclasses. It differs from a private method in
    that it may be explicitly invoked on any instance of the class, and it is not restricted to implicit invocation&nbsp;<a name="I_indexterm7_d1e24396"></a>on&nbsp;<tt>self</tt><a name="to define"></a>.
    A protected method can be used, for example, to define an accessor that allows instances of a class to share
    internal state with each other, but does not allow users of the class to access that state.</p>

  <p class="docText">
  </p>

  <p class="docText">


  </p>


</div>
