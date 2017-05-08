# encoding: utf-8
class Memo < Post
  # No need to have separate constructor here
  # This class doesn't have extra variables of exemplar
  def read_from_console
    puts "New note (everything you put before \"end\"):"

    line = nil

    # Recording user inputs in an array @text
    # until user types "end"
    until line == "end"
      line = STDIN.gets.chomp
      @text << line
    end

    # Delete the last element "end" from an array @text
    @text.pop
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n \n"

    # Return an array @text with added to the beggining date
    # using method unshift
    @text.unshift(time_string)
  end
end