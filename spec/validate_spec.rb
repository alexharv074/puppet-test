module Helpers
  def help
    context "bar" do
      it "baz" do
        expect(true).to be true
      end
    end
  end
end

include Helpers

describe "foo" do
  it "example" do
    Helpers.help
  end
end
