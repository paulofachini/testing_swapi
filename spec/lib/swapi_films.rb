class SwapiFilms
  include HTTParty
  base_uri "https://swapi.co/api"

  def self.get_api_root
    get("/")
  end

  def self.get_all_films
    get("/films")
  end

  def self.get_film_by_id(id)
    get("/films/#{id}")
  end

  def self.get_film_by_title(title)
    get("/films/?search=#{title}")
  end

end