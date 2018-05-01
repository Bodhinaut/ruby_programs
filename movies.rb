
movies = {
  :Eternal_sunshine_of_the_spotless_mind => 100
}


puts ("Please type one of the following to edit the Movie Database!\n 
  add\n update\n display\n delete\n : ")
choice = gets.chomp

case choice 
  when "add"
    puts "Please input a movie title: "
    title = gets.chomp
    puts "Please input a rating for this movie: "
    rating = gets.chomp
      if movies[title.to_sym] == nil
         movies[title.to_sym] = rating.to_i
      else
         puts "That movie has already been rated!"
       end
     when "update"
      puts "Please enter a title to be updated: "
      title = gets.chomp 
        if movies[title.to_sym] == nil
          puts "That title does not yet exist!"
        else 
          puts "Please enter a new rating for this title: "
          rating = gets.chomp
          movies[title.to_sym] = rating.to_i
        end
    when "display"
      movies.each do |key, value|
        puts "#{key}: #{value}"
      end
    when "delete"
      puts "Please enter the title to be deleted: "
      title = gets.chomp
      if movies[title.to_sym] == nil
        puts "I'm sorry, that title does not yet exist!"
      else
        movies.delete(title.to_sym)
        puts "#{title} has been deleted!"
      end
    else
      puts "Entered text is not a choice! Please try typing again!"
  end