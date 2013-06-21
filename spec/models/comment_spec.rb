require 'spec_helper'

describe Comment do 
  before do
    @comment = Comment.new(content: "Hello world", name: "Taras", email: "taras@kowaliw.ca")
  end  

  subject(@comment)

  it  { should respond_to(:content) }
  it  { should respond_to(:name) }  

  describe "when name is not present" do
    before {@comment.name = nil}
    it { should_not be_valid }
  end

  describe "with blank content" do
    before {@comment.content = " "}
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before {@comment.content = "a" * 1000 }
    it { should_not be_valid }
  end

  


end
