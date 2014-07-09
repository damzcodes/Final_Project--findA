class Church < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	has_many :events
	has_one :pastor
	validate :name, presence: true

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
			# if c.children[??] != nil
			# 	@email = ""
			# end
			church = Church.new
			church.name = @name
			church.address = @address 
			church.phone = @phone
			church.save!
		end

		
	end

end
