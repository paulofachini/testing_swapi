require_relative '../lib/swapi_films.rb'

describe 'The Star Wars API - SWAPI', :swapi do

  context 'health check', :health_check do
    
    it 'get api_root endpoint' do
      result = SwapiFilms.get_api_root
      
      expect(result.response.code).to eql "200"
      expect(result.response.message).to eql "OK"
    end

  end

  context 'contract', :contract do
    
    it 'validate films endpoint' do
      result = SwapiFilms.get_film_by_id("1")
      
      expect(result.response.code).to eql "200"
      expect(result.response.message).to eql "OK"
      expect(result.response).to match_json_schema("films")
    end

  end
    
  context 'functional tests', :functional do

    it 'get film by id' do
      result = SwapiFilms.get_film_by_id("1")
      
      expect(result.response.code).to eql "200"
      expect(result.response.message).to eql "OK"
      expect(result.parsed_response["title"]).to eql "A New Hope"
      expect(result.parsed_response["episode_id"]).to eql 4
      expect(result.parsed_response["director"]).to eql "George Lucas"
      expect(result.parsed_response["producer"]).to eql "Gary Kurtz, Rick McCallum"
      expect(result.parsed_response["release_date"]).to eql "1977-05-25"
    end

    it 'get film by title', :test do
      result = SwapiFilms.get_film_by_title("force")
      
      expect(result.response.code).to eql "200"
      expect(result.response.message).to eql "OK"
      expect(result.parsed_response["results"][0]["title"]).to eql "The Force Awakens"
      expect(result.parsed_response["results"][0]["episode_id"]).to eql 7
      expect(result.parsed_response["results"][0]["director"]).to eql "J. J. Abrams"
      expect(result.parsed_response["results"][0]["producer"]).to eql "Kathleen Kennedy, J. J. Abrams, Bryan Burk"
      expect(result.parsed_response["results"][0]["release_date"]).to eql "2015-12-11"
    end

    it 'get list of all films' do
      result = SwapiFilms.get_all_films
      
      expect(result.response.code).to eql "200"
      expect(result.response.message).to eql "OK"
      expect(result.parsed_response["count"]).to eql 7
    end

  end

end