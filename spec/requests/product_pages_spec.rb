require 'spec_helper'

describe "ProductPages" do

  subject { page  }

  describe "Product creation page" do
  	before {  visit create_path  }

  	it {  should have_content('Make Product')}
  end
end
