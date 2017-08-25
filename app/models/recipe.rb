class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = 'your api key from food2fork.com'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"], fields: "image_url,f2f_url,social_rank,title"
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end