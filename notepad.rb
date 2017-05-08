# encoding: utf-8
#
# Program "Notepad" demonstrates class inheritance in Ruby
# Version 0.2, using classes Post, Memo, Link & Task

require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'

# Greeting an user and asking him/her
# what needed to be created
puts "Hi! I'm your motepad!"
puts
puts "What do you want to create today?"

# Recording an array with types of notes
# by calling static method post_types
choices = Post.post_types

choice = -1

# Asking user to choose a number from given options
# until choice is correct
until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = gets.to_i
end

# When choice is made creating a given type note
# using static method create
entry = Post.create(choice)

# Asking an user to type a post
entry.read_from_console

# Saving it to the file
entry.save

puts "Your note has been saved!"