require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "should have name" do
      @product = Product.new
      @product.name = nil
      @product.valid?
      expect(@product.errors[:name]).to include("can't be blank")

      
    end
    it "should be fine with has a name" do
      @product = Product.new

      @product.name = 'test' # valid state
      @product.valid? 
      expect(@product.errors[:name]).not_to  include("can't be blank")
    end

  end
end
