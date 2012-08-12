# encoding: utf-8
require File.dirname(__FILE__) + '/../spec_helper'

describe "Riaktus.version" do

  it "method should return the string" do
    ver_string = Riaktus::Version::STRING
    ver_method = Riaktus.version

    ver_method.should == ver_string
  end

end