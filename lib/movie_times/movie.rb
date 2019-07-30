class MovieTimes::Movie 
  
  def self.release 
    # I should return a bunch of instances of Movie
    puts "1. Fast & Furious - Hobbs & Shaw - 2019" 
    puts "2. Dora and the Lost City of Gold - 2019" 
    
    movie_1 = self.new 
    movie_1.title = "Fast & Furious - Hobbs & Shaw"
    movie_1.duration = "111 min"
    movie_1.genre = "action thriller"
    movie_1.times_tickets = "https://meh.com"
    movie_1.releasedate = "16 August 2019"
    movie_1.availability = true 
    
    movie_2 = self.new 
    movie_2.title = "Dora and the Lost City of Gold"
    movie_2.duration = "102 min"
    movie_2.genre = "adventure family"
    movie_2.times_tickets = "https://meh.com"
    movie_2.releasedate = "23 August 2019"
    movie_2.availability = true
    
    
  end 
  
end 

