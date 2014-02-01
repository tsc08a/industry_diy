require 'spec_helper'

describe "UserPages" do
  subject { page  }

  describe "Product creation page" do
  	before {  visit signup_path  }

  	it {  should have_content('Sign Up')}
  end
end
