require 'rails_helper'
require 'spec_helper'

#RSpec.describe Vacation, type: :model do

#	it "is valid with valid attributes" do
#		expect(Vacation.new).to be_valid
#	end

#	it "is not valid without a start_date" 
#	it "is not valid without a end_date"
#end

describe Vacation do

	it "valid vacation" do
		Vacation.new(:worker_email => "worker.example.com", :start_date =>"2017-04-10", :end_date =>"2017-05-05").should be_valid
	end

	it "invalid item with blank worker email" do
		Vacation.new(:worker_email => nil, :start_date =>"2017-04-10", :end_date =>"2017-05-05").should_not be_valid
	end

	it "invalid item with start date in the past" do
		Vacation.new(:worker_email => nil, :start_date =>"2011-04-04", :end_date =>"2017-05-05").should_not be_valid
	end

	it "invalid item with end date in the past" do
		Vacation.new(:worker_email => nil, :start_date =>"2017-04-04", :end_date =>"2011-05-05").should_not be_valid
	end
end