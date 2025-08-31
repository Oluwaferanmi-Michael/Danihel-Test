# Danihel-Test

## Summary

### Architecture

The File Structure separates all concerns like so:

business logic -> ```core``` folder
UI Pages ->  ```pages``` folder
utilities (useful methods, styles, common values, constants, extensions ) -> ```util``` folder
widgets -> ```widgets``` folder


## Get It
was used for injection of common useful items throughout the app, e.g. App Insets, Text Styles

## Freezed
generated methods for the product class

## Provider
Was Used to manage all ephemeral and app state

## Others
created extension for use on enum values
created barrel file to cleanup package imports
