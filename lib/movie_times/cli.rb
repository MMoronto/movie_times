class MovieTimes::CLI 
  
  def call 
    list_movies
    menu
  end 
  
  def list_movies
    # here doc
    puts "Coming Soon to a Theatre Near You:"
    puts <<-DOC.gsub /^\s*/, ''
        1. Once Upon a Time in Hollywood - Aug 4th 
        2. Aladdin - July 31st
      DOC 
  end 
  
  def menu
    puts "Enter the number of the movie you'd like to see:"
    input = gets.strip
  end 
   
end 