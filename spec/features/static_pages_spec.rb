require 'spec_helper'

describe "Static Pages" do
include Capybara::DSL
let(:base_title) { "Ruby on Rails Sample App" }
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end
	
	it "should have the title 'home'" do
	  visit '/static_pages/home'
	  page.should have_selector("title:contains('#{base_title} - Home')")
	end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end
	
	it "should have the title 'help'" do
	  visit '/static_pages/help'
	  page.should have_selector("title:contains('#{base_title} - Help')")
	end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
	
	it "should have the title 'about'" do
	  visit '/static_pages/about'
	  page.should have_selector("title:contains('#{base_title} - About Us')")
	end
  end
  
  describe "Contact page" do
    
	it "should have content 'Contact'" do
	  visit '/static_pages/contact'
	  page.should have_selector("h1:contains('Contact')")
	end
	
	it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector("title:contains('#{base_title} - Contact')")
    end
  end
  
end
