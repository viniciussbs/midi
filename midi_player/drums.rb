require 'unimidi'
require './lib/note'
require './lib/music'
require './lib/playlist'

track = Music.new('Drum Session', rest_duration: 0.12)

track.write(['C3'], [nil],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], ['D3'], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], [nil], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3'], ['D3'], ['F4'], ['D3'],
            ['C3'], ['C3'], ['C3', 'F4'], ['C3'],
            ['C3', 'C#4'])

playlist = Playlist.new(track)
playlist.play
