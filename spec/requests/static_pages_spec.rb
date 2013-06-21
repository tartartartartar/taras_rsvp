require 'spec_helper'

describe "StaticPages" do
  
  
  
  describe "Home page" do
    it "should have the content 'Hello!'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Hello!')
    end
  end
  
  describe "RSVP page" do
    it "should have the content 'RSVP'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/rsvp'
      page.should have_content('RSVP')
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
  end  
  
end
