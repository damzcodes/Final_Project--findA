class Church < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :church_events
	has_many :events, :through => :church_events

	def self.churches_list
		doc = Nokogiri::HTML(open("http://www.adventistchurches.org.uk/churches.php?Field=SEC%20(London)"))
		# find out how to gsub on mapped objects
		
		doc.css("tr>td>p").each do |c|c.text
			@name = c.children[0].text.chomp.strip.gsub(":", "")
			if c.children[1] != nil
				@address = c.children[1].text.chomp.strip.gsub(".  (See", "")
			end
			if c.children[5] != nil
				@phone = c.children[5].text.chomp.strip.gsub(") Phone: ", "")
			end
			church = Church.new
			church.name = @name
			church.address = @address 
			church.phone = @phone
			church.save!
		end

		
	end

end
