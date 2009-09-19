require 'spec_helper'
require 'dm-core'

class MockContent
  include DataMapper::Resource
  include Filters::Resource
  
  property :html, Text
  property :filters, String
end

describe Filters::Resource do
  describe ".property" do
    before(:each) do
      @model = MockContent
      @props = @model.properties
    end
        
    it "should add :to property if not defined" do
      @model.property(:body, String, :filter => {:to => :html2, :with => "Markdown"})
      @model.properties.named?('html2').should be_true
    end

    it "should not add :with property if not defined" do
      @model.property(:body, String, :filter => {:to => :html, :with => :filters2})
      @model.properties.named?(:filters2).should be_true
    end
  end
end
