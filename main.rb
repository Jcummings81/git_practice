<<<<<<< HEAD
require_relative 'Gemfile'
=======
require 'colorize'
require_relative 'git'
>>>>>>> my_feature

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      Git.puts_git(gets.strip)
    when 2
      exit
    else
      puts 'Invalid choice'.colorize(:red)
    end

    menu
  end

end

Main.menu