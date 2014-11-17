require 'spec_helper'

describe EventController do

	describe "new" do 
		it "should find instance of Event" do
			get :new
			expect(assigns(:event)).to be_an_instance_of(Event)
		end
	end

	describe "create" do
		it "should create event" do
			post :create, { event: {:name => "Test", :date => "24/06/2014", :address => "123 Test Road", 
			:description => "tester", :start_time => "1pm", :end_time => "5pm", :event_type => "music", :church_id => 1}}
			expect(Event.count).to eq(1)
		end
	end
	
end
