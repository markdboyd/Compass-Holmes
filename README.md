Compass Holmes
==============

This project is an adaptation of the [http://www.red-root.com/sandbox/holmes/](Holmes Markup Detective) created by Luke Williams for use with Compass. 

Essentially, this project acts as a markup linter that provides styles to highlight where your markup is invalid, non-standard, or deprecated. CSS based messages that explain the problems with your markup are also included.

Feel free to check out the [http://www.red-root.com/sandbox/holmes/testsuite/testsuite.html](demo) provided by the original creator of Holmes to see how it works.

What's new?
===========

Apart from porting the syntax of Holmes from CSS to SCSS, the biggest change is the separation of the different "error levels" into SASS partials. The benefit of this change is that you can now control which "error level" you want to see from Holmes simply by choosing which partials to import into your SASS stylesheets, reducing compiled CSS size and enabling you to focus on issues with your markup one "error level" at a time. Instructions on how to implement different "error levels" are provided in the [How to Use](How to Use) section of this document.

Install
=======

Compas Holmes is provided as a Ruby gem, so to install, simply run the following command from the command line:

	(sudo) gem install compass-holmes

Create a Compass project with Compass Holmes
============================================

To create a compass project with Compass Holmes, run this command from the command line:

  compass create <project name> -r compass-holmes -u compass-holmes

How to use
==========

### Add the styles

Add this line to the top of your Compass configuration file:

	require "compass-holmes"

Import the styles from Holmes you want into your SASS stylesheets. To include all of the styles provided by Holmes, use:

	@import "compass-holmes";

However, if you want to target specific "error level(s)", such as only invalid markup, or only invalid and deprecated markup, you have to do two things. First, import the message styling for Holmes:

	@import "compass-holmes/messages";

By itself, that import does nothing but provide message styling for Holmes, but for the sake of an optimal modular structure and compiled output cleanliness, it needs to be imported separately. The second thing you have to do is just add the imports for the "error levels" you're interested in. Those imports are:

Invalid markup styles

	@import "compass-holmes/error";

Non-standard markup styles

	@import "compass-holmes/warn";

Deprecated markup styles

	@import "compass-holmes/deprecated";

### Add the body class

__IMPORTANT: All of the Holmes styles are only triggered by adding a body class of "holmes-debug"__, so if you've included the styles but aren't seeing any of them appear, that is likely the reason. One easy way of adding the body class is to use JS/jQuery. Or, if you're using Drupal, you can investigate using [http://api.drupal.org/api/drupal/includes!theme.inc/function/template_preprocess_page/](template_preprocess_page) to add this body class.

A word of caution
=================

The CSS provided by Holmes relies on a lot of fancy selectors, especially attribute selectors and pseudo-classes. As such, these styles are unlikely to work in outdated browsers such as Old IE, so make sure to use Holmes in a modern browser.

Acknowledgments
===============

Adapted from [https://github.com/redroot/holmes](Holmes)