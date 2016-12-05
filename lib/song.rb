require 'pry'

class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end



  # def self.reset_all
  #   @@songs.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
