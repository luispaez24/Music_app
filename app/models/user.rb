class User < ApplicationRecord
  has_many :songs, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  self.authentication_keys = [:username]
end





#RSpec.describe User, type: :model do
  # Test User Model Validation: Email Format
  #it "is valid with a valid email format" do
    #user = User.new(email: "test@example.com", password: "password")
    #expect(user).to be_valid
  #end

  #it "is invalid with an invalid email format" do
    #user = User.new(email: "invalid-email", password: "password")
    #expect(user).not_to be_valid
  #end

  # Test User-Playlist Relationship: User owns Playlists
  #it "can have many playlists" do
    #user = User.create!(email: "user@example.com", password: "password")
    #playlist = Playlist.create!(name: "My Playlist", user: user)

    #expect(user.playlists).to include(playlist)
  #end

  # Test User-Song Relationship: User owns Songs (Optional if needed)
  #it "can have many songs" do
    #user = User.create!(email: "user@example.com", password: "password")
    #song = Song.create!(title: "Song Title", artist: "Artist", user: user)

    #expect(user.songs).to include(song)
  #end
#end