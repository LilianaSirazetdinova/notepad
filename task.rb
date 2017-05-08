# encoding: utf-8
#
# Plugging in built-in class Date to work with dates
require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  # Method read_from_console for exemplar Task
  # Asking user Task description and due date
  def read_from_console
    puts "What is needed to be done?"
    @text = STDIN.gets.chomp

    puts "What is due date? Please use following format: YYYY-MM-DD"
    input = STDIN.gets.chomp

    # Getting object of the Class Date from the string
    # using static method of this class
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r n\r"

    deadline = "Due date: #{@due_date}"

    return [deadline, @text, time_string]
  end
end