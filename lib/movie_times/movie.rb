class MovieTimes::Movie 
  attr_accessor :title, :duration, :genre, :times_tickets, :releasedate, :availability
  
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
    doc = Nokogiri::HTML(open("https://www.imdb.com/movies-coming-soon"))
    binding.pry 
    
    movie = self.new 
    movie.title = doc.search(h4.title).text.strip
    movie.duration = doc.search(p.datetime).text.strip
    movie.genre = doc.search(#).text.strip
    movie.times_tickets = doc.search().text.strip
    movie.releasedate = doc.search().text.strip
    movie.availability = true 
    
    movie
  end 
  
end 

