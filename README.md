Devise - Suspendable
=================

Devise-Suspendable is a simple module which uses the [Devise](http://github.com/plataformatec/devise) authentication framework Activatable module hooks to provide a simple clean way to suspend an account.

When an account is suspended the date and time of suspension is recorded, as well as an optional reason, for easy reference.


Installation
------------

Either install it as a plugin:

    script/plugin install git@github.com:joshk/devise_suspendable.git

or a gem (using any of the following)

1. `sudo gem install devise_suspendable` in your command prompt

2. `config.gem devise_suspendable` in environment.rb

3. `gem devise_suspendable` or in your Gemfile


**And don't forget to add [Devise](http://github.com/plataformatec/devise)!**


Setup
-----

Once devise-suspendable is installed, all you need to do is setup the user model which includes a small addition to the model itself and to the schema.

First the schema :

    create_table :users do |t|

      t.suspendable

    end

and don’t forget to migrate :

    rake db:migrate.

then finally the model :

    class User < ActiveRecord::Base

      devise :authenticatable, :trackable, :activatable, :suspendable
      # or :database_authenticatable in 1.1

      ...
    end

Remember to include :activatable so the Activatable hook is included.


Usage
-----

Devise-Imapable works in replacement of Authenticatable, allowing for user name (or email) and password authentication. The standard sign\_in routes and views work out of the box as these are just reused from devise. I recommend you run :

    script/generate devise_views

so you can customize your login pages.

------------------------------------------------------------

**please note**

This plugin is similar to Lockable and can be used along side it, as long as Lockable is using token or timeouts as the unlock strategy.


So remember ...
---------------

- Lockable is great for failed login tracking, and subsequent locking

- Suspendable is best for manual account suspension

- Maintaining your active users is part and parcel of running a web app


References
----------

* [Devise](http://github.com/plataformatec/devise)
* [Warden](http://github.com/hassox/warden)


TODO
----

- tests, tests, tests



Released under the MIT license

Copyright (c) 2010 Josh Kalderimis,
