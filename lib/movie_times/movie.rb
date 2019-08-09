class MovieTimes::Movie 
  attr_accessor :title, :duration, :genre, :times_tickets, :releasedate, :availability
  
  def self.release 
    # Scrape IMDB and return movie premiere listings based on that data 
    self.scrape_movies  
  end 
  
  def self.scrape_movies 
    movie_1 = self.new 
    movie_1.title = "Fast & Furious - Hobbs & Shaw"
    movie_1.duration = "111 min"
    movie_1.genre = "action thriller"
    movie_1.times_tickets = "https://www.imdb.com/title/tt6806448/?ref_=inth_ov_tt"
    movie_1.releasedate = "16 August 2019"
    movie_1.availability = true 
    
    movie_2 = self.new 
    movie_2.title = "Dora and the Lost City of Gold"
    movie_2.duration = "102 min"
    movie_2.genre = "adventure family"
    movie_2.times_tickets = "https://www.imdb.com/title/tt7547410/?ref_=cs_ov_tt"
    movie_2.releasedate = "23 August 2019"
    movie_2.availability = true
    
    [movie_1, movie_2]
  end 
  
end 

