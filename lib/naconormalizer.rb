require 'java'
require "NacoNormalizer/version"
require_relative "../vendor/oclcNacoNormalizer.jar"

class NacoNormalizer
  
  OCLCNormalizer = org.oclc.util::NacoNormalize
  
  Defaults = { :keep_caps => false, :strip_html => true, :keep_first_comma => true}
  def initialize(opts)
    opts = opts.merge(Defaults)
    @keep_caps = opts[:keep_caps]
    @strip_html = opts[:strip_html]
    @keep_first_comma = opts[:keep_first_comma]
  end
  
  def normalize(str, keep_first_comma = @keep_first_comma, keep_caps = @keep_caps, strip_html = @strip_html )    
    OCLCNormalizer.nacoNormalize(str, keep_caps, strip_html, keep_first_comma)
  end
  
end
