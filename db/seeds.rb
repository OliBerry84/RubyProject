require_relative('../models/motorbikes.rb')
require_relative('../models/manufacturer.rb')
require('pry-byebug')

Motorbike.delete_all()
Manufacturer.delete_all()

manufacturer1 =  Manufacturer.new({
  'name' => 'Kawasaki',
  })

manufacturer1.save()

manufacturer2 =  Manufacturer.new({
    'name' => 'Honda',
    })

manufacturer2.save()

manufacturer3 =  Manufacturer.new({
  'name' => 'Suzuki',
  })

manufacturer3.save()

manufacturer4 =  Manufacturer.new({
  'name' => 'Yamaha',
  })

manufacturer4.save()

manufacturer5 =  Manufacturer.new({
  'name' => 'KTM',
  })

manufacturer5.save()

manufacturer6 =  Manufacturer.new({
  'name' => 'Harley Davidson',
  })

manufacturer6.save()

manufacturer7 =  Manufacturer.new({
  'name' => 'Triumph',
  })

manufacturer7.save()

manufacturer8 =  Manufacturer.new({
  'name' => 'Ducati',
  })

manufacturer8.save()

manufacturer9 =  Manufacturer.new({
  'name' => 'Aprilia',
  })

manufacturer9.save()

manufacturer10 = Manufacturer.new({
'name' => 'BMW',
})

manufacturer10.save()

motorbike1 = Motorbike.new({
  'year' => 1995,
  'manufacturer_id' => manufacturer9.id,
  'model' => 'RS-R',
  'cc' => 250,
  'price' => 1750,
  'quantity' => 2
  })

motorbike1.save()

motorbike2 = Motorbike.new({
  'year' => 1999,
  'manufacturer_id' => manufacturer3.id,
  'model' => 'Hayabusa',
  'cc' => 1300,
  'price' => 1200,
  'quantity' => 1
  })

motorbike2.save()

motorbike3 = Motorbike.new({
  'year' => 2003,
  'manufacturer_id' => manufacturer1.id,
  'model' => 'Ninja ZX-7RR',
  'cc' => 749,
  'price' => 14995,
  'quantity' => 1
  })

motorbike3.save()

motorbike4 = Motorbike.new({
  'year' => 1991,
  'manufacturer_id' => manufacturer2.id,
  'model' => 'VFR',
  'cc' => 748,
  'price' => 3490,
  'quantity' => 1
  })

motorbike4.save()

motorbike5 = Motorbike.new({
  'year' => 2017,
  'manufacturer_id' => manufacturer10.id,
  'model' => 'S 1000 XR',
  'cc' => 999,
  'price' => 12500,
  'quantity' => 2
  })

motorbike5.save()

motorbike6 = Motorbike.new({
  'year' => 1999,
  'manufacturer_id' => manufacturer6.id,
  'model' => 'XL 1200 C Custom Special',
  'cc' => 1200,
  'price' => 9000,
  'quantity' => 1
  })

motorbike6.save()

motorbike7 = Motorbike.new({
  'year' => 2012,
  'manufacturer_id' => manufacturer8.id,
  'model' => 'MULTISTRADA 1200 S Touring',
  'cc' => 1198,
  'price' => 7990,
  'quantity' => 1
  })

motorbike7.save()

motorbike8 = Motorbike.new({
  'year' => 1997,
  'manufacturer_id' => manufacturer7.id,
  'model' => 'Speed Triple',
  'cc' => 900,
  'price' => 3750,
  'quantity' => 2
  })

motorbike8.save()

motorbike9 = Motorbike.new({
  'year' => 2009,
  'manufacturer_id' => manufacturer3.id,
  'model' => 'GSXR K8',
  'cc' => 749,
  'price' => 5890,
  'quantity' => 3
  })

motorbike9.save()

motorbike10 = Motorbike.new({
  'year' => 2008,
  'manufacturer_id' => manufacturer2.id,
  'model' => 'CBR RR-8',
  'cc' => 599,
  'price' => 4990,
  'quantity' =>1
  })

motorbike10.save()

motorbike11 = Motorbike.new({
  'year' => 2017,
  'manufacturer_id' => manufacturer5.id,
  'model' => 'RC125',
  'cc' => 125,
  'price' => 3890,
  'quantity' => 1
  })

motorbike11.save()

motorbike12 = Motorbike.new({
  'year' => 2006,
  'manufacturer_id' => manufacturer8.id,
  'model' => 'S4 RS',
  'cc' => 998,
  'price' => 6795,
  'quantity' => 1
  })

motorbike12.save()

motorbike13 = Motorbike.new({
  'year' => 2004,
  'manufacturer_id' => manufacturer8.id,
  'model' => '749S',
  'cc' => 749,
  'price' => 4790,
  'quantity' => 2
  })

motorbike13.save()

motorbike14 = Motorbike.new({
  'year' => 2002,
  'manufacturer_id' => manufacturer9.id,
  'model' => 'RSV MILLE R',
  'cc' => 998,
  'price' => 14980,
  'quantity' => 1
  })

motorbike14.save()

motorbike15 = Motorbike.new({
  'year' => 2010,
  'manufacturer_id' => manufacturer5.id,
  'model' => 'RC8',
  'cc' => 1150,
  'price' => 6590,
  'quantity' => 1
  })

motorbike15.save()

motorbike16 = Motorbike.new({
  'year' => 2006,
  'manufacturer_id' => manufacturer4.id,
  'model' => 'R6',
  'cc' =>  599,
  'price' => 5290,
  'quantity' => 4
  })

motorbike16.save()

binding.pry
nil
