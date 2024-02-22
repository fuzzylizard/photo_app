require 'rails_helper'

# Returns all photographs in the authenticated user's feed, newest to oldest
# 
RSpec.describe "Photographs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      photo = Photograph.new(title: 'Photo 1', description: 'This is a photo', url: 'example.com/photo').save

      get "/photographs/index"
      result = JSON.parse(response.body)
      
      expect(response).to have_http_status(:success)
      expect(result).to include(
          hash_including(
            "description"=>"This is a photo", 
            "title"=>"Photo 1", 
            "url"=>"example.com/photo"
          )
      )
    end
  end

end
