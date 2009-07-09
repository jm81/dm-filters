dm-filters
==========

This module enables a property in a DataMapper::Resource class to be filtered on
save into another property, using per-row and/or per-property filters.

To use in a model:

    include Filters::Resource

The syntax when defining a property is:

    property :prop_name, :filter => {
      :to => :filtered_prop,
      :with => :filter_column,
      :default => "DefaultFilter"
    }

(:with and :default are optional, though at least one should be specified.)

See Filters::AVAILABLE_FILTERS for some filter options. Additional filters
may be defined in this constant Hash.

If the properties in :to and :with have not yet been defined, they will be
defined automatically. Hence, if want to specify any options with this, they
should be defined before to filtered property.

##Installation

To install the gem:

    gem sources -a http://gems.github.com
    sudo gem install jm81-dm-filters
    
To require:

    gem 'jm81-dm-filters'
    require 'dm-filters'

##Copyright

Copyright (c) 2009 Jared Morgan. See LICENSE for details.
