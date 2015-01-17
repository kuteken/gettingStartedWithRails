require 'rails_helper'

RSpec.describe Article, :type => :model do
  context "valid case" do
    it "good input" do
      Article.new(:title => "testTitle", :detail => "detailTitle").should be_valid
    end
    it "not input" do
      Article.new().should_not be_valid
    end
    it "not enough length" do
      Article.new(:title => "test", :detail => "test").should_not be_valid
    end
  end
end
