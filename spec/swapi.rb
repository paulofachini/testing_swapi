
class Swapi
    include HTTParty
    base_uri "https://swapi.co/api"
  
    def self.get_all_films
      get("/films")
    end

    # def get_film_by_id(id)
    #     self.class.get("/films/#{id}")
    # end

    # def get_film_by_title(title)
    #     self.class.get("/films/?search=#{title}")
    # end

end