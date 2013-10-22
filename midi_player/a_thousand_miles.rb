require 'unimidi'
require './lib/note'
require './lib/music'
require './lib/playlist'

track01 = Music.new('A Thousand Miles')

track01.write(['B5'],
              ['E5', 'B6'],
              ['B5'],
              ['B6'],
              ['F#5', 'Bb6'],
              ['B5'],
              ['Bb6'],
              ['Eb5', 'F#6'],
              [nil] * 5,
              ['E5', 'Eb6'],
              [nil],
              ['Db6'],
              ['B5'],
              ['E5', 'B6'],
              ['B5'],
              ['B6'],
              ['F#5', 'Bb6'],
              ['B5'],
              ['Bb6'],
              ['Eb5', 'F#6'],
              ['B5'],
              ['F#6'],
              ['B5'],
              ['F#6'],
              ['B5'],
              ['E5', 'Eb6'],
              ['E6'],
              ['Eb6'],
              ['B5'],
              ['E5', 'B6'],
              ['B5'],
              ['B6'],
              ['F#5', 'Bb6'],
              ['B5'],
              ['Bb6'],
              ['Eb5', 'F#6'],
              [nil] * 5,
              ['E5', 'Eb6'],
              [nil],
              ['Db6'],
              ['B5'],
              ['E5', 'Eb6'],
              ['Db6'],
              ['B5'],
              ['F#5', 'Eb6'],
              ['Db6'],
              ['B5'],
              ['Eb5', 'F#6'],
              [nil] * 3,
              ['E5', 'Db6']
              )

playlist = Playlist.new(track01)
playlist.play
