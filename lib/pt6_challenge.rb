class MusicListenedTo
  def initialize
    @tracks = []git 
  end

  def add_tracks(song) # task is a string
    if !@tracks.include?(song)
       @tracks << song
    end 
  end

  def list
   @tracks
  end
end