class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = '64b1d0b906e100db4a4a4efdbb8e5e3b'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"], fields: "image_url,f2f_url,social_rank,title"
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end