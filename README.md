# NacoNormalizer

A tiny shim around the OCLC's java code that performs NACO normalization,
a string normalization process used by libraries (and others) to normalize
author and title strings for sorting purposes.

See http://www.loc.gov/aba/pcc/naco/normrule-2.html for more information about NACO normalization

The called Java code adapted from https://code.google.com/p/oclcnaconormalizer/ and copyright OCLC

## Usage

~~~

# default normalizer strips html, keeps the first comma
# (for "Lastname, Firstname" support) and lowercases
# everything (where "lowercase" means "do the appropriate
# thing given the script being used")

author_normalizer = NacoNormalizer.new
sortable_author = author_normalizer.normalize(author_name)

# When normalizing titles, we don't want to keep the first
# comma -- throw it out with all the rest of the punctuation
title_normalizer  = NacoNormalizer.new(:keep_first_comma => false)
sortable_title  = title_normalizer.normalize(title)

~~~

## Installation

Add this line to your application's Gemfile:

    gem 'NacoNormalizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install NacoNormalizer


# Changes
__v0.9.2 2013-12-06__

* Use the updated 2007 normalization code
* Simplify interface to only expose most common use case

__v0.9.1 2013-12-06__

* Fixed issues with the gemspec re: homepage and license

__v0.9.0 2013-12-06__

* First public release

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
