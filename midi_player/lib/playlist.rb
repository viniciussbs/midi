class Playlist
  attr_reader :tracks, :current_track
  
  def initialize(*tracks)
    @tracks = tracks.to_enum
  end

  def add_track(track)
    list = tracks.entries.push(track).to_enum
    list.next while list.peek != next_track
    @tracks = list
  end

  alias :<< :add_track

  def next_track
    tracks.peek
  end

  def play
    (@current_track = tracks.next).read_sheet do |symbols|
      if symbols.map(&:value).all?
        play_notes(symbols)
      else
        rest(symbols)
      end
    end
  end

  def rewind
    tracks.rewind
  end

  private

  def output
    @output ||= UniMIDI::Output.open(:first)
  end

  def play_notes(notes)
    line = ""
    (values = notes.map(&:value)).max.times do |i|
      if values.member?(i+1)
        line << '.'
      else
        line << ' '
      end
    end
    puts line
    
    notes.each do |note|
      output.puts(0x90, note.value, note.speed)
    end

    rest

    notes.each do |note|
      output.puts(0x80, note.value, note.speed)
    end
  end

  def rest(symbols = nil)
    if symbols
      symbols.count.times do
        puts ''
        sleep current_track.rest_duration
      end
    else
      sleep current_track.rest_duration
    end
  end
end
