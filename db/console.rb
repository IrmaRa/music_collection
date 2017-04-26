require('pry-byebug')
require_relative('../models/artist')
require_relative('../models/album')

artist1 = Artist.new ({'name' => 'Drake'})
artist2 = Artist.new ({'name' => 'Timberlake'})

artist1.save()
artist2.save()

album1 = Album.new ({
  'title' => 'More Life',
  'genre' => 'hip_hop',
  'artist_id' => artist1.id
  })

album1.save

album2 = Album.new ({
  'title' => 'Thank Me Later',
  'genre' => 'hip_hop',
  'artist_id' => artist1.id
  })

album2.save


album3 = Album.new ({
  'title' => 'Justified',
  'genre' => 'r&b',
  'artist_id' => artist2.id
  })

album3.save



binding.pry
nil