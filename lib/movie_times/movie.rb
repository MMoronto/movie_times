class MovieTimes::Movie 
  attr_accessor :title, :duration, :genre, :times_tickets, :releasedate, :availability
  
  def self.release 
    # Scrape IMDB and return movie premiere listings based on that data 
    self.scrape_movies  
  end 
  
  def self.scrape_movies 
    movies = []
    
    #Go to IMDB, find movies coming soon 
    #extract the properties
    #Instantiate a movie 
    
    #repeat for the next movie 
    
    movies 
  end 
  
end 

