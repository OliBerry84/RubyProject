require_relative('../models/albums.rb')
require_relative('../models/artists.rb')
require('pry-byebug')

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({
'name' => 'Trivium'
  })

artist1.save()

artist2 = Artist.new({
'name' => 'Device'
  })

artist2.save()

artist3 = Artist.new({
'name' => 'Korn'
  })

artist3.save()

artist4 = Artist.new({
'name' => 'Disturbed'
  })

artist4.save()

artist5 = Artist.new({
'name' => 'Royal Blood'
  })

artist5.save()

artist6 = Artist.new({
'name' => '30 Seconds to Mars'
  })

artist6.save()

artist7 = Artist.new({
'name' => 'Airbourne'
  })

artist7.save()

artist8 = Artist.new({
'name' => 'Atreyu'
  })

artist8.save()

artist9 = Artist.new({
'name' => 'Audioslave'
  })

artist9.save()

artist10 = Artist.new({
'name' => 'Metallica'
  })

artist10.save()

artist11 = Artist.new({
'name' => 'Nirvana'
  })

artist11.save()

artist12 = Artist.new({
'name' => 'Probot'
  })

artist12.save()

artist13 = Artist.new({
'name' => 'The Raconteurs'
  })

artist13.save()

artist14 = Artist.new({
'name' => 'Slipknot'
  })

artist14.save()

artist15 = Artist.new({
'name' => 'Soundgarden'
  })

artist15.save()

artist16 = Artist.new({
'name' => 'Twenty One Pilots'
  })

artist16.save()

album1 = Album.new({
'artist_id' => artist1.id,
'name' => 'Silence in the Snow',
'price' => 12,
'quantity' => 5
  })

album1.save()

album2 = Album.new({
'artist_id' => artist2.id,
'name' => 'Device',
'price' => 10,
'quantity' => 4
  })

album2.save()

album3 = Album.new({
'artist_id' => artist3.id,
'name' => 'The Serenity of Suffering',
'price' => 15,
'quantity' => 9
  })

album3.save()

album4 = Album.new({
'artist_id' => artist4.id,
'name' => 'Immortalized',
'price' => 5,
'quantity' => 7
  })

album4.save()

album5 = Album.new({
'artist_id' => artist5.id,
'name' => 'Royal Blood',
'price' => 11,
'quantity' => 7
  })

album5.save()

album6 = Album.new({
'artist_id' => artist5.id,
'name' => 'How Did We Get So Dark',
'price' => 15,
'quantity' => 12
  })

album6.save()

album7 = Album.new({
'artist_id' => artist6.id,
'name' => 'A Beautiful Lie',
'price' => 6,
'quantity' => 5
  })

album7.save()

album8 = Album.new({
'artist_id' => artist6.id,
'name' => 'This is War',
'price' => 8,
'quantity' => 3
  })

album8.save()

album9 = Album.new({
'artist_id' => artist7.id,
'name' => 'Runnin Wild',
'price' => 7,
'quantity' => 3
  })

album9.save()

album10 = Album.new({
'artist_id' => artist8.id,
'name' => 'The Best of',
'price' => 8,
'quantity' => 2
  })

album10.save()

album11 = Album.new({
'artist_id' => artist9.id,
'name' => 'Audioslave',
'price' => 15,
'quantity' => 12
  })

album11.save()

album11 = Album.new({
'artist_id' => artist10.id,
'name' => 'S & M 2 cd set',
'price' => 25,
'quantity' => 7
  })

album11.save()

album12 = Album.new({
'artist_id' => artist10.id,
'name' => 'Death Magnetic',
'price' => 9,
'quantity' => 6
  })

album12.save()

album13 = Album.new({
'artist_id' => artist10.id,
'name' => 'Ride the Lightning',
'price' => 9,
'quantity' => 3
  })

album13.save()

album14 = Album.new({
'artist_id' => artist11.id,
'name' => 'Nevermind',
'price' => 8,
'quantity' => 6
  })

album14.save()

album15 = Album.new({
'artist_id' => artist12.id,
'name' => 'Probot',
'price' => 6,
'quantity' => 5
  })

album15.save()

album16 = Album.new({
'artist_id' => artist13.id,
'name' => 'Broken Boy Soldiers',
'price' => 7,
'quantity' => 4
  })

album16.save()

album17 = Album.new({
'artist_id' => artist13.id,
'name' => 'Consolers of the Lonely',
'price' => 8,
'quantity' => 6
  })

album17.save()

album18 = Album.new({
'artist_id' => artist14.id,
'name' => 'Iowa',
'price' => 5,
'quantity' => 1
  })

album18.save()

album19 = Album.new({
'artist_id' => artist15.id,
'name' => 'Superunknown',
'price' => 11,
'quantity' => 7
  })

album19.save()

album20 = Album.new({
'artist_id' => artist16.id,
'name' => 'Blurryface',
'price' => 9,
'quantity' => 7
  })

album20.save()

binding.pry
nil
