require 'spec_helper'

describe "Static Pages" do

	subject {page}
	
	describe "Home Page" do
		before {  visit root_path  }

		it {  should have_content('Industry DIY')  } 
		it {  should have_title('Industry DIY') }
	end

	describe "About Page" do
		before {  visit about_path  }
		
		it {  should have_content('About')  } 
		
	end
end
