RSpec.shared_examples "helpers" do
  context "bar" do
    it "baz" do
      expect(true).to be true
    end
  end
end

describe "foo" do
  include_examples "helpers"
end
