require 'spec_helper'

describe Church do
		context "Given a church exists" do
			before do 
				Church.churches_list
			end

			it "should get churches in database" do
				expect(Church.first.name).to eq("Balham")
				expect(Church.first.phone).to eq("020 8673 8038")
				expect(Church.first.address).to eq("83 Elmfield Road  Balham London SW17 8AD")
			end

		end

		it {should have_many(:events)}
		it {should have_one(:pastors)}

end