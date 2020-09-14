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
  puts "Please enter a command:"
  input = gets.strip
end

def list (song_array)
  puts song_array
end

def play(choice)
  puts "Playing #{song_array[choice + 1]}"
end

def exit_program
  puts "Goodbye!"
end

def run(song_array)
  
  puts "Welcome to the CLI JukeBox!"
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
      exit_program
      flag = true
    else
      help
  end
end

run(songs)