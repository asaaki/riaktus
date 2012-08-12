# encoding: utf-8
$:.push(File.expand_path("../../lib", __FILE__))
require "riaktus"

RSpec::Matchers.define :include_hash do |expected|

  match do |actual|
    actual.is_a?(Hash) &&
    expected.is_a?(Hash) &&
    (actual.keys & expected.keys) == expected.keys &&
    !(expected.keys.inject([]){|m,k|
        m << expected.has_value?(actual[k])
      }.uniq.include?(false))
  end

end
