require 'CSV'

class FileIO

  def self.read
    file = CSV.open("./test/input.csv", headers: true, header_converters: :symbol)
  end

  def self.players_and_words
    read.map(&:to_h)
  end

end
