require 'rspec'

# describe 'My behaviour' do
#
#   it 'should do something' do
#
#     # true.should == false
#     expect(true).to eq(true)
#   end
# end

require 'spec_helper'
require 'rails_helper'

describe Employee do
  it "has a valid factory" do
    FactoryGirl.create(:employee).should be_valid
  end
  # it "is valid without a first name"
  # it "is valid without a last name"
  # it "returns a contact's full name as a string"
end