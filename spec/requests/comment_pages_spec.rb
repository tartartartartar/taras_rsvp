require 'spec_helper'

describe "Micropost pages" do

  subject { page }

  describe "micropost creation" do
    before { visit root_path }

    describe "with valid information" do

      before {fill_in 'comment_content',  with 'meow meow'}
      before {fill_in 'comment_name',  with 'meow meow'}
      it "should create a comment" do
        expect { click_button "Post" }.to change(Comment, :count).by(1)
      end
    end
  end
end
