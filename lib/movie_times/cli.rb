class MovieTimes::CLI 
  
  def call 
    list_movies
    menu
    goodbye
  end 
  
  def list_movies
    puts ""
    puts "Coming Soon to a Theatre Near You:"
    MovieTimes::Movie.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end 
      puts ""
  end 
  
  def menu
    input = nil 
    while input != "exit"
      puts ""
      puts "What movie would you more information on, by name or number?"
      puts ""
      puts "Enter list to see the movies again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        list
      elsif input.to_i == 0
        if movie = NowPlaying::Movie.find_by_name(input)
          print_movie(movie)
        end
      elsif input.to_i > 0
        if movie = NowPlaying::Movie.find(input.to_i)
          print_movie(movie)
        end
      end
    end
    puts "Goodbye!!!"
  end 
  
  def goodbye 
    puts "See you next time for more movie premiere updates!!!"
  end 
   
end 