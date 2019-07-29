class MovieTimes::CLI 
  
  def call 
    list_movies
    menu
    #goodbye
  end 
  
  def list_movies
     # here doc
    puts "Coming Soon to a Theatre Near You:"
    #puts <<-DOC.gsub /^\s*/, ''
    puts "1. Fast & Furious - Hobbs & Shaw - 2019" 
    puts "2. Dora and the Lost City of Gold - 2019" 
      #DOC 
  end 
  
  def menu
    puts "Enter the number of the movie you'd like to see:"
    input = gets.strip
    case input
    when "1"
      puts "Showtimes & Tickets for Fast & Furious - Hobbs & Shaw - 2019"
    when "2"
      puts "Showtimes & Tickets for Dora and the Lost City of Gold - 2019"
    end 
  end 
   
end 