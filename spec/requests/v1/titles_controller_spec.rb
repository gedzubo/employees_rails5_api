require 'rails_helper'

RSpec.describe "Title resource", type: :request do
  describe "GET v1/titles" do
    before(:each) do
      @title_type1 = create(:title_type1)
      @title_type2 = create(:title_type2)
    end

    it "returns correct http status" do
      get v1_titles_path
      expect(response).to have_http_status(200)
    end

    it "returns correct json response" do
      get v1_titles_path
      body = JSON.parse(response.body)
      titles = body['data'].map{|record| record['attributes']['name']}
      expect(titles).to match_array([@title_type1.name, @title_type2.name])
    end
  end
end