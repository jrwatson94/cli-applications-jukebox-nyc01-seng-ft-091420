require "pry"

# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (song_array)
  i = 0
  while i < song_array.length
    song_array[i] = "#{i+1}. #{song_array[i]}"
    puts song_array[i]
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.downcase.chomp 
  
  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
    elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye!"
end

def run(song_array)
  puts"Please enter a command:"
  flag = false
  while flag == false
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(song_array)
    elsif input == "play"
      play(song_array)
    elsif input == "exit"
      exit_jukebox
      flag = true
    else
      help
    end
  end
end
#run(songs)



