require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
		it "should have the content 'Sample App' " do

			visit '/staticpages/home'
			page.should have_content('Sample App')
		end
	end

	describe "About us" do
		it "Should say 'About Us' in Title" do
			visit '/staticpages/about'
			page.should have_selector('title', :text => 'About Us')
		end

	end

end
