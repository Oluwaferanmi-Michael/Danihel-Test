# Danihel-Test

## Summary

### Architecture

The File Structure separates all concerns like so:

1. business logic -> ```core``` folder
#### Business Logic was separeted into 3 folders
 - Data
    - contains abstractions and backend logic for app functionality,

 - Domain
    - contains all the models necessary for data transfer and receipt

 - Provider (or Presentation Layer)
    - Where the Provider packakge was used to to deal with all form sof state within the app

2. UI Pages ->  ```pages``` folder
3. utilities (useful methods, styles, common values, constants, extensions ) -> ```util``` folder
4. widgets -> ```widgets``` folder


## Get It
was used for injection of common useful items throughout the app, e.g. App Insets, Text Styles

## Freezed
generated methods for the product class

## Provider
Was Used to manage all ephemeral and app state

## Others
created extension for use on enum values
created barrel file to cleanup package imports
