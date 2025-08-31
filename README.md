# Danihel-Test

## Summary

### Architecture

The File Structure separates all concerns like so:

1. business logic -> ```core``` folder
#### Business Logic was separated into 3 folders
 - Data
    - contains abstractions and backend logic for app functionality,

 - Domain
    - contains all the models necessary for data transfer and receipt

 - Provider (or Presentation Layer)
    - Where the Provider package was used to deal with all forms of state within the app

2. UI Pages ->  ```pages``` folder
3. utilities (useful methods, styles, common values, constants, extensions ) -> ```util``` folder
4. widgets -> ```widgets``` folder


## Get It
was used for the injection of commonly useful items throughout the app, e.g. App Insets, Text Styles

## Freezed
generated methods for the product class

## Provider
Was used to manage all ephemeral and app state

## Others
created an extension for use on enum values
Created a barrel file to clean up package imports

Created a Custom Chip Widget because of a behaviour with the built-in Chip Widgets in Flutter, where the background colours don't respond to a change in opacity,
To preserve the User Experience, A custom ```AppChip``` Widget was made, see: [daniheltest\lib\widgets\shared\app_chips.dart]
