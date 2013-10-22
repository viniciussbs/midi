class Music
  attr_reader :title, :sheet
  attr_accessor :rest_duration
  
  def initialize(title, options = {})
    @title = title
    @sheet = []
    @rest_duration = options[:rest_duration] || 0.15
  end

  def write(*sheet)
    @sheet = sheet.map do |line|
      line.map do |note_name|
        Note.new(note_name)
      end
    end
  end

  def read_sheet
    self.sheet.each do |line|
      yield line
    end
  end
end
