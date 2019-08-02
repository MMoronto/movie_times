class MovieTimes::CLI 
  
  def call 
    list_movies
    menu
    goodbye
  end 
  
  def list_movies
     # here doc
    puts "Coming Soon to a Theatre Near You:"
    @movies = MovieTimes::Movie.release
  end 
  
  def menu
    input = nil 
    while input != "exit"
      puts "Enter the number of the movie you'd like to see or type list to see the movie premiere listings again or type exit"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        puts @movies[input.to_i-1]
      elsif input == "list
        list_movies
      else 
        puts "Not sure what you want, type list or exit."
      end 
    end
  end 
  
  def goodbye 
    puts "See you next time for more movie premiere updates!!!"
  end 
   
end 