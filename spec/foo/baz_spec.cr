require "spec"
require "../../src/foo/baz"

include Foo

describe Baz do
  describe "#do_something" do
    baz = Baz.new
    baz.do_something.should eq "I am Foo Baz."
  end
end
