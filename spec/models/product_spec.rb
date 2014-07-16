require 'spec_helper'

describe Product do
  describe "validate attributes" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }
  end

  describe "valid product" do
   let(:product) { build(:product) }

   it "Should be valid" do
    expect(product).to be_valid 
   end
  end
end
