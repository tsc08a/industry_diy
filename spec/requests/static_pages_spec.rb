require 'spec_helper'

describe "Static Pages" do
	
	describe "Home Page" do

		it "should have the content 'Industry DIY'" do
			visit '/static_pages/home'
			expect(page).to have_content('Industry DIY')
		end

		it "should hve title Inudstry DIY" do
			visit '/static_pages/home'
			expect(page).to have_title("Industry DIY")
		end
	end

	describe "About Page" do
		it "Should say something about industry diy" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
	end
end
