class Note
  attr_reader :value, :name
  attr_accessor :speed
  
  def initialize(name = nil, speed = 50)
    @name = name
    @speed = speed
    @value = (@name.nil?) ? nil : calculate_value
  end

  private

  def calculate_value
    if info = @name.match(/^(?:(?<key>[CDFGA])(?<accidental>#)?|(?<key>[DEGAB])(?<accidental>b)?)(?<octave>[0-8])?$/)
      key(info[:key]) + accidental(info[:accidental]) + octave(info[:octave])
    else
      raise Exception.new("Invalid note")
    end
  end

  def key(key)
    {C: 0, D: 2, E: 4, F: 5, G: 7, A: 9, B: 11}[key.to_sym]
  end

  def accidental(accidental)
    {'b' => -1, '#' => +1}[accidental] || 0
  end

  def octave(octave=4)
    12 * (octave || 4).to_i
  end
end
