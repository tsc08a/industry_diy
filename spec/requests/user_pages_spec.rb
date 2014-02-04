require 'spec_helper'

describe "UserPages" do
  subject { page  }

  describe "User Profile Page" do
  	let(:user) { FactoryGirl.create(:user) }
  	before {visit user_path(user) }

  	it {  should have_content(user.name)  }
  	it {  should have_title(user.name)  }
  end


  describe "User creation page sign up" do
  	before {  visit signup_path  }

  	it {  should have_content('Sign Up')}
  	it {  should have_title('Industry DIY | Sign Up')}

  	let(:submit) {  "Create my account"  }

  	describe "With INvalid information" do	
  		it "should not make a user" do
  			expect {   click_button submit  }.not_to change(User, :count)
  		end
  	end

  	describe "with Valid information" do
  		before do
  			fill_in "Name", 		with:  "Example User"
  			fill_in "Email", 		with:  "user@example.com"
  			fill_in "Password", 	with:  "bulldog40"
  			fill_in "Confirmation", 	with:  "bulldog40"
  		end

  		it "should create a user" do
  			expect { click_button submit  }.to change(User, :count).by(1)
  		end
  	end
  end
end
