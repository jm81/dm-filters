require 'spec_helper'
require 'filters/linebreaker'

describe Linebreaker do

  it "should convert single line breaks to <br> tags" do
    Linebreaker.new("abc\n\ndef\nghi").to_html.should ==
      "abc\n\ndef<br />\nghi"
  end

end
