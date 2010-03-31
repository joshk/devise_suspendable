# encoding: utf-8
require 'devise'

require 'devise_suspendable/schema'

# Add +:suspendable+ strategy to defaults.
#
Devise.add_module(:suspendable,
                  :model  => 'devise_suspendable/model')
