class MovieTimes::Movie 
  attr_accessor :title, :availability, :get_tickets 
  
  def self.release 
    # Scrape IMDB and return movie premiere listings based on that data 
    self.scrape_movies  
  end 
  
  def self.scrape_movies 
    movies = []
    
    movies << self.scrape_imdb
    
    #Go to IMDB, find movies coming soon 
    #extract the properties
    #Instantiate a movie 
    
    #repeat for the next movie 
    
    movies 
  end 
  
  def self.scrape_imdb
    doc = Nokogiri::HTML(open("https://www.imdb.com"))
        #binding.pry 
    
    movie = self.new 
    movie.title = doc.css(div.title).text.strip
    movie.availability = true
    movie.get_tickets = doc.css(div.action).text.strip
    
    movie
  end 
  
end 

