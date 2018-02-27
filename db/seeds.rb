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
'buyprice' => 7,
'sellprice' => 12,
'quantity' => 15
  })

album1.save()

album2 = Album.new({
'artist_id' => artist2.id,
'name' => 'Device',
'buyprice' => 6,
'sellprice' => 10,
'quantity' => 24
  })

album2.save()

album3 = Album.new({
'artist_id' => artist3.id,
'name' => 'The Serenity of Suffering',
'buyprice' => 8,
'sellprice' => 15,
'quantity' => 9
  })

album3.save()

album4 = Album.new({
'artist_id' => artist4.id,
'name' => 'Immortalized',
'buyprice' => 3,
'sellprice' => 5,
'quantity' => 17
  })

album4.save()

album5 = Album.new({
'artist_id' => artist5.id,
'name' => 'Royal Blood',
'buyprice' => 6,
'sellprice' => 11,
'quantity' => 17
  })

album5.save()

album6 = Album.new({
'artist_id' => artist5.id,
'name' => 'How Did We Get So Dark',
'buyprice' => 8,
'sellprice' => 15,
'quantity' => 22
  })

album6.save()

album7 = Album.new({
'artist_id' => artist6.id,
'name' => 'A Beautiful Lie',
'buyprice' => 4,
'sellprice' => 6,
'quantity' => 25
  })

album7.save()

album8 = Album.new({
'artist_id' => artist6.id,
'name' => 'This is War',
'buyprice' => 5,
'sellprice' => 8,
'quantity' => 13
  })

album8.save()

album9 = Album.new({
'artist_id' => artist7.id,
'name' => 'Runnin Wild',
'buyprice' => 3,
'sellprice' => 7,
'quantity' => 19
  })

album9.save()

album10 = Album.new({
'artist_id' => artist8.id,
'name' => 'The Best of',
'buyprice' => 5,
'sellprice' => 8,
'quantity' => 4
  })

album10.save()

album11 = Album.new({
'artist_id' => artist9.id,
'name' => 'Audioslave',
'buyprice' => 8,
'sellprice' => 15,
'quantity' => 11
  })

album11.save()

album11 = Album.new({
'artist_id' => artist10.id,
'name' => 'S & M 2 cd set',
'buyprice' => 13,
'sellprice' => 25,
'quantity' => 27
  })

album11.save()

album12 = Album.new({
'artist_id' => artist10.id,
'name' => 'Death Magnetic',
'buyprice' => 5,
'sellprice' => 9,
'quantity' => 16
  })

album12.save()

album13 = Album.new({
'artist_id' => artist10.id,
'name' => 'Ride the Lightning',
'buyprice' => 5,
'sellprice' => 9,
'quantity' => 13
  })

album13.save()

album14 = Album.new({
'artist_id' => artist11.id,
'name' => 'Nevermind',
'buyprice' => 3,
'sellprice' => 8,
'quantity' => 26
  })

album14.save()

album15 = Album.new({
'artist_id' => artist12.id,
'name' => 'Probot',
'buyprice' => 2,
'sellprice' => 6,
'quantity' => 15
  })

album15.save()

album16 = Album.new({
'artist_id' => artist13.id,
'name' => 'Broken Boy Soldiers',
'buyprice' => 4,
'sellprice' => 7,
'quantity' => 14
  })

album16.save()

album17 = Album.new({
'artist_id' => artist13.id,
'name' => 'Consolers of the Lonely',
'buyprice' => 3,
'sellprice' => 8,
'quantity' => 16
  })

album17.save()

album18 = Album.new({
'artist_id' => artist14.id,
'name' => 'Iowa',
'buyprice' => 2,
'sellprice' => 5,
'quantity' => 21
  })

album18.save()

album19 = Album.new({
'artist_id' => artist15.id,
'name' => 'Superunknown',
'buyprice' => 3,
'sellprice' => 11,
'quantity' => 17
  })

album19.save()

album20 = Album.new({
'artist_id' => artist16.id,
'name' => 'Blurryface',
'buyprice' => 4,
'sellprice' => 9,
'quantity' => 17
  })

album20.save()

binding.pry
nil
