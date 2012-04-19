Compass Holmes
==============

This project is an adaptation of the [Holmes Markup Detective](http://www.red-root.com/sandbox/holmes/) created by Luke Williams for use with Compass. 

Essentially, this project acts as a markup linter that provides styles to highlight where your markup is invalid, non-standard, or deprecated. CSS based messages that explain the problems with your markup are also included.

Feel free to check out the [demo](http://www.red-root.com/sandbox/holmes/testsuite/testsuite.html) provided by the original creator of Holmes to see how it works.

## What's new?

Apart from porting the syntax of Holmes from CSS to SCSS, the biggest change is the separation of the different "error levels" into SASS partials. The benefit of this change is that you can now control which "error level" you want to see from Holmes simply by choosing which partials to import into your SASS stylesheets, reducing compiled CSS size and enabling you to focus on issues with your markup one "error level" at a time. Instructions on how to implement different "error levels" in your stylesheets are provided in the "How to use" section of this document.

## Install

Compas Holmes is provided as a Ruby gem, so to install, simply run the following command from the command line:

	(sudo) gem install compass-holmes

## Create a Compass project with Compass Holmes

To create a compass project with Compass Holmes, run this command from the command line:

  compass create <project name> -r compass-holmes -u compass-holmes

## How to use

__NOTE: Compass Holmes is written in the SCSS syntax, so all of the instructions for how to use it in your stylesheets use the SCSS syntax as well.__ If you want an introduction to regular SASS syntax or how to use it, please visit the [official SASS syntax documentation](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html).

### Edit your config

Add this line to the top of your Compass configuration file:

	require "compass-holmes"

### Add the styles

Import the styles from Holmes you want into your SASS stylesheets. To include all of the styles provided by Holmes, use:

	@import "compass-holmes";

Otherwise, if you only want to target specific "error levels" in your markup, simply add one or more of the following imports to your stylesheets:

Invalid markup styles

	@import "compass-holmes/error";

Non-standard markup styles

	@import "compass-holmes/warn";

Deprecated markup styles

	@import "compass-holmes/deprecated";

### Add the body class

__IMPORTANT: All of the Holmes styles are only triggered by adding a body class of "holmes-debug"__, so if you've included the styles but aren't seeing any of them appear, that is likely the reason. One easy way of adding the body class is to use JS/jQuery. Or, if you're using Drupal, you can investigate using [template_preprocess_page](http://api.drupal.org/api/drupal/includes!theme.inc/function/template_preprocess_page/) to add this body class.

## A word of caution

The CSS provided by Holmes relies on a lot of fancy selectors, especially attribute selectors and pseudo-classes. As such, these styles are unlikely to work in outdated browsers such as Old IE, so make sure to use Holmes in a modern browser.

## Acknowledgments

Adapted from [Holmes Markup Detective](https://github.com/redroot/holmes)