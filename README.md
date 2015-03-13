Sapphire CMS Rails
==================

Sapphire CMS Rails is a rails engine backend to [Sapphire CMS](http://github.com/kvanwagenen/sapphire-cms), a rich-client content management system built on AngularJS. Sapphire CMS has a modular architecture allowing it be integrated with any number of backend frameworks and plugins.

Development
-----------

### Environment

This rails engine requires a full Ruby on Rails environment, including Ruby, Rails, Bundler, and a datastore. Sqlite3 is used by default in development. Refer to the documentation of each for installation instructions.

### Rails assets

The rails assets project is used to include bower packages in the rails asset pipeline. Refer to [rails-assets.org](http://rails-assets.org) for more information.

### Angular Modules

The Sapphire CMS frontend is maintained in a separate repository and is composed of a number of bower packages. In order to develop the frontend, this project must be cloned into a "sapphire_cms_rails" directory and the frontend repository must be checked out in the same parent directory. Then in the directory of the frontend project, run 
    
    gulp --syncToRails

to compile and sync frontend dependencies into the rails engine project as they change. Refer to the [frontend project](http://github.com/kvanwagenen/sapphire-cms) for more information.

License
-------

This project rocks and uses MIT-LICENSE.