require 'java'
require "naconormalizer/version"
require_relative "../vendor/oclcnaconormalizer.jar"


# A tiny shim around the OCLC's java code that performs NACO normalization,
# used by libraries (and others) to normalize author and title strings for
# sorting purposes.
#
# See http://www.loc.gov/aba/pcc/naco/normrule-2.html
#
# Java code adapted from https://code.google.com/p/oclcnaconormalizer/ and copyright OCLC
#
# @author Bill Dueber 

class NacoNormalizer
  
  OCLCNormalizer = org.oclc.util::NacoNormalize
  
  Defaults = { :keep_first_comma => true }

  # Create a new normalizer that will use the passed options (if any)
  # @param [Hash] opts The hash of options
  # @option opts [Boolean] :keep_first_comma (true) Keep the first comma. Defaults, for Lastname,Firstname name data
  #
  # @example
  #  author_normalizer = NacoNormalizer.new
  #  title_normalizer  = NacoNormalizer.new(:keep_first_comma => false)
  #
  #  sortable_author = author_normalizer.normalize(author_name)
  #  sortable_title  = title_normalizer.normalize(title)
  
  def initialize(opts={})
    opts = opts.merge(Defaults)
    @keep_first_comma = opts[:keep_first_comma]
  end
  
  # Normalize a string using the options passed to the constructor
  # @param [String] str The string to normalize
  # @return [String] The normalized string
  def normalize(str, keep_first_comma = @keep_first_comma )    
    OCLCNormalizer.nacoNormalize2007(str, keep_first_comma)
  end
  
end
