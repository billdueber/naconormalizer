require 'minitest_helper'

class TestNacoNormalizer < MiniTest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NacoNormalizer::VERSION
  end

  def test_basics
    author_normalizer = NacoNormalizer.new
    assert_equal 'bill dueber', author_normalizer.normalize('[  Bill Dueber -- ]')
  end
end
