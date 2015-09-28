require_relative 'file_io'
require_relative 'player'

class GameReader

  attr_reader :incoming_data

  def initialize(incoming_data=FileIO.players_and_words)
    @incoming_data = incoming_data
  end

  def create_players
    @incoming_data.map do |element|
      Player.new(element[:player_id])
    end
  end

end
