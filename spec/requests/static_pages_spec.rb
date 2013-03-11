require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
	it "has content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/static_pages/home'
      #response.status.should be(200)
      #response.should have_content('Sample App')
    end
  end
end
