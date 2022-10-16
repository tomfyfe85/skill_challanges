require 'pt5_diaryentry'

RSpec.describe DiaryEntry do 
  it 'checks for the title'  do 
    
      entry = DiaryEntry.new("entry1", "hello this is the first1")
      expect(entry.title).to eq "entry1"
  end
  
  it 'it checks for strings' do
      entry = DiaryEntry.new("entry1", "hello this is the first1")
      expect(entry.contents).to eq "hello this is the first1"
    end 

  describe '#word_counts' do 
      it 'returns 5 if string has 5 characters' do
      entry  = DiaryEntry.new("entry1", "hello this is the first1")
      expect(entry.count_words).to eq 5
      end 
      it 'returns 0 if contents is emtpy' do
      entry = DiaryEntry.new("entry1", "")
      expect(entry.count_words).to eq 0
      end
  end 
  
  describe '#reading_time' do
    it 'returns 1 if wpm is 100 and word count is 5' do
       entry  = DiaryEntry.new("entry1", "hello this is the first1" )
       expect(entry.reading_time(100)).to eq 1
    end
    it 'returns 3 if argument is wpm 200 and word count is 550' do
      entry  = DiaryEntry.new("entry1", ('word ' * 550))
      expect(entry.reading_time(200)).to eq 3
    end 

    it 'fails' do 
      entry = DiaryEntry.new('entry1', 'word ' * 550)
      expect { entry.reading_time(0) }.to raise_error "WPM must be above 0"
    end 
  end 
end 


