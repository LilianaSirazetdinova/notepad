# encoding: utf-8
class Link < Post
  def initialize
    super

    @url = ''
  end

  # Method read_from_console for exemplar Link
  # Asking user link url and it's description
  def read_from_console
    puts "Link adress(url):"
    @url = STDIN.gets.chomp

    puts "Short description"
    @text = STDIN.gets.chomp
  end

  # Method to_strings for Link returns
  # an array with 3 strings: url, description
  # and string with time it was created
  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n \n"

    return [@url, @text, time_string]
  end
end