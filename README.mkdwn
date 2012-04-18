Compass Holmes
=================================

This project is an adaptation of the [http://www.red-root.com/sandbox/holmes/](Holmes Markup Detective) created by Luke Williams. 

### What's new?

There are three main differences from the original Holmes project:

+	File format changed from regular CSS to SCSS
+	Separated CSS rules into separate SCSS partials according to what "warning level" you want to display
+ Added extra body classes in addition to "holmes-debug" to enable granular control of error display. The new classes are:
 + "holmes-warn" - Shows warning-level issues which may be encouraged for accessibility but are not required
 + "holmes-error" - Shows only issues which invalidate your markup and are required
 + "holmes-deprecated" - Shows only deprecated elements and styles

As a result of the nesting of CSS rules provided by SCSS and the use of partials, users can now control exactly what level of error from Holmes that they want to inject into their stylesheets. Also, with the addition of more specific Holmes error level classes, regardless of what rules from Holmes are present in your styles, you can choose which error levels to show by adding and/or stacking error level classes on the body tag.

### How to use

__NOTE: Make sure the holmes folder exists in the same directory as your other SASS/SCSS files.__

The partials for various error levels are named according to error level and the body class suffix that they require. For posterity though, here are the @import rules and body classes you need to apply in order to display the various warning levels offered by this project:

#### Warning level

	@import "holmes/warn";

Apply body class 'holmes-warn'

#### Error level

	@import "holmes/error";

Apply body class 'holmes-error'

#### Deprecated level

	@import "holmes/deprecated";

Apply body class 'holmes-deprecated'

#### All error levels

	@import "holmes/debug";

Apply body class 'holmes-debug'

### Acknowledgments

Adapted from [https://github.com/redroot/holmes](Holmes)