# encoding: utf-8

class Post
  # Method post_types returns all known successors
  # of the Class Post in the array
  def self.post_types
    [Memo, Link, Task]
  end

  # Method create dynamicly(depending on parameter)
  # creates object of needed class( Memo, Task or Link)
  # getting list with method post_types
  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = []
  end

  def read_from_console
    # This method is realized in each successor
  end

  def to_strings
    # This method is realized in each successor
  end

  def save
    file = File.new(file_path, 'w:UTF-8') # opening a file for recording

    to_strings.each { |string| file.puts(string) }

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_time = @created_at.strftime('%Y-%m-%d_%H-%M-%S')

    "#{current_path}/#{self.class.name}_#{file_time}.txt"
  end
end