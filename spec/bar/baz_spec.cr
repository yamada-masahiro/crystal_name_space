require "spec"
require "../../src/bar/baz"

include Bar

describe Baz do
  describe "#do_something" do
    it "returns a string" do
      baz = Baz.new
      baz.do_something.should eq "I am Bar Baz."
    end
  end
end
