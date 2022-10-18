require_relative "../lib/pt6_challenge"

RSpec.describe MusicListenedTo do
  it 'returns a emtpy array' do 
    music = MusicListenedTo.new
    expect(music.list).to eq []
  end 
  it 'adds song name to the list' do 
    music = MusicListenedTo.new 
    music.add_tracks('Iron Man')
    expect(music.list).to eq ['Iron Man']
  end
  it 'adds 2 songs to the list' do 
    music = MusicListenedTo.new
    music.add_tracks('Iron Man')
    music.add_tracks('Into the void')
    expect(music.list).to eq ['Iron Man', 'Into the void']
  end
  it 'tests for duplicates and omits from list' do 
    music = MusicListenedTo.new
    music.add_tracks('Iron Man')
    music.add_tracks('Iron Man')
    expect(music.list).to eq ['Iron Man']
  end 
end 