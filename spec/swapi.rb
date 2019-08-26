class Swapi
    include HTTParty
    base_uri 'https://swapi.co/api'
  
    def get_all_people
      self.class.get("/people/")
    end

    def get_people_by_id(id)
        self.class.get("/people/#{id}")
    end

    def get_people_by_name(name)
        self.class.get("/people/?search=#{name}")
    end

  end