require "rails_helper"

RSpec.describe "Link redirection", type: :request do 

	it "redirects to original URL for a given short link" do
		url = "https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwjnyoT20e_vAhUKhuAKHQMEAtYQPAgI"
		shortener = Shortener.new(url)
		link = shortener.generate_short_link
		
		get link.shortened_url

		expect(response).to redirect_to(link.original_url)
	end
end