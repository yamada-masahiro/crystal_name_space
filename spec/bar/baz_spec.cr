require "spec"
require "../../src/bar/baz"

include Bar

describe Baz do
  describe "#do_something" do
    baz = Baz.new
    baz.do_something.should eq "I am Bar Baz."
  end
end
