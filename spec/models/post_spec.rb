require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do

  	before do 
  		@post = Post.create(data: Date.today, retionale: "Anything")
  	end
  	
  	it "can be created" do
  		expect(@post).to be_valid
  	end

  	it "can not be created without a data and rationale" do
  		@post.data = nil
  		@post.retionale = nil
  		expect(@post).to_not be_valid
  	end

  end
end
