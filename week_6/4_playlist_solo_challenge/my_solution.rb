# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [ with: Simon Gondeck ].


# Pseudocode



# Initial Solution

class Playlist

	def initialize(*songs)
		@playlist = songs
		
	end

	def add(*song)
		@playlist += song
	end

	def num_of_tracks
		@playlist.length
	end

	def remove(song)
	end

	def includes?(song)
		@playlist.include?(song)
	end

	def play_all
	end

	def display
	end


end

class Song
	def initialize(song, artist)
		@song = song
		@artist = artist
	end

	def play
		"Now playing #{@song} by #{@artist}."
	end
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 