require 'rails_helper'

# RSpec.describe Link, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"

RSpec.describe Link do
	it "always has an original URL and a short code" do

		link = Link.new( original_url: "https://favoritewebsite.com/articles/how-to-cook",
		short_code: "1234567" )

		link.save
	end
end
