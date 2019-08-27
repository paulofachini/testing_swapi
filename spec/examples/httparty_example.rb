require 'httparty'

response = HTTParty.get('https://swapi.co/api/films/1/')

puts response.body, response.code, response.message, response.headers.inspect
