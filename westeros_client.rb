module WesterosClient
  include HTTParty
  base_uri 'http://localhost:4567'
  format :json
end
