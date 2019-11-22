
puts 'Cleaning database...'
User.destroy_all
Meuble.destroy_all


kevin = User.create!(
  email: 'toto@gmail.com',
  password: '123456')

puts 'Creating meubles...'

# image = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574171146/canape.jpg')


  canape = Meuble.new(
    name:         'Couch',
    category:     'Bedroom',
    description:  'Pretty blue couch for 5 people',
    height:        100,
    width:         600,
    length:        1200,
    daily_rate:    10,
    disponibility: true,
    user:          User.first)

canape_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335577/canape_1_c4uvgg.jpg')
canape.photos.attach(io: canape_1, filename: 'some-image.jpg', content_type: 'image/jpg')
canape_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335578/canape_2_sdnlsv.jpg')
canape.photos.attach(io: canape_2, filename: 'some-image.jpg', content_type: 'image/jpg')
canape_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335578/canape_3_mvjkmk.jpg')
canape.photos.attach(io: canape_3, filename: 'some-image.jpg', content_type: 'image/jpg')
canape.save


  rocking_chair = Meuble.create!(
    name:         'Rocking chair',
    category:     'Living Room',
    description:  'Charming vintage rocking chair',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    5,
    disponibility: true,
    user:          User.first)

rocking_chair_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335578/rocking_chair_1_rprvzs.jpg')
rocking_chair.photos.attach(io: rocking_chair_1, filename: 'some-image.jpg', content_type: 'image/jpg')
rocking_chair_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335577/rocking_chair_2_cmhzur.jpg')
rocking_chair.photos.attach(io: rocking_chair_2, filename: 'some-image.jpg', content_type: 'image/jpg')
rocking_chair_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335577/rocking_chair_3_xrtiao.jpg')
rocking_chair.photos.attach(io: rocking_chair_3, filename: 'some-image.jpg', content_type: 'image/jpg')
rocking_chair.save

  lamp = Meuble.create!(
    name:         'Lamp',
    category:     'Living Room',
    description:  'Opalin scandinave lamp',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    10,
    disponibility: true,
    user:          User.first)

lamp_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335576/lamp_1_mpje4v.jpg')
lamp.photos.attach(io: lamp_1, filename: 'some-image.jpg', content_type: 'image/jpg')
lamp_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335577/lamp_2_owac9f.jpg')
lamp.photos.attach(io: lamp_2, filename: 'some-image.jpg', content_type: 'image/jpg')
lamp_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335576/lamp_3_dnzjct.jpg')
lamp.photos.attach(io: lamp_3, filename: 'some-image.jpg', content_type: 'image/jpg')
lamp.save

  cuisiniere = Meuble.create!(
    name:         'Gas stove',
    category:     'Kitchen',
    description:  'Luxury gas stove to cook delicious meals',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    50,
    disponibility: true,
    user:          User.first)

cuisiniere_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335576/cuisiniere_1_f6mddu.jpg')
cuisiniere.photos.attach(io: cuisiniere_1, filename: 'some-image.jpg', content_type: 'image/jpg')
cuisiniere_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335576/cuisiniere_2_jk11dr.jpg')
cuisiniere.photos.attach(io: cuisiniere_2, filename: 'some-image.jpg', content_type: 'image/jpg')
cuisiniere_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335578/cuisiniere_3_rqjrx1.jpg')
cuisiniere.photos.attach(io: cuisiniere_3, filename: 'some-image.jpg', content_type: 'image/jpg')
cuisiniere.save

  baignoire = Meuble.create!(
    name:         'Vintage bathtub',
    category:     'Bathroom',
    description:  'Perfect to make your bathroom as a spa',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    15,
    disponibility: true,
    user:          User.first)

baignoire_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335575/baignoire_1_z4jlce.jpg')
baignoire.photos.attach(io: baignoire_1, filename: 'some-image.jpg', content_type: 'image/jpg')
baignoire_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574343254/baignoire_2_aserrm.jpg')
baignoire.photos.attach(io: baignoire_2, filename: 'some-image.jpg', content_type: 'image/jpg')
baignoire_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335575/baignoire_3_ptusas.jpg')
baignoire.photos.attach(io: baignoire_3, filename: 'some-image.jpg', content_type: 'image/jpg')
baignoire.save

  tipi = Meuble.create!(
    name:         'Teepee',
    category:     'Kids',
    description:  'Teepee as a bed for kids',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    2,
    disponibility: true,
    user:          User.first)

tipi_1 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335575/tipi_1_ixt114.jpg')
tipi.photos.attach(io: tipi_1, filename: 'some-image.jpg', content_type: 'image/jpg')
tipi_2 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335575/tipi_2_b3jlzx.jpg')
tipi.photos.attach(io: tipi_2, filename: 'some-image.jpg', content_type: 'image/jpg')
tipi_3 = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574335575/tipi_3_jn15fc.jpg')
tipi.photos.attach(io: tipi_3, filename: 'some-image.jpg', content_type: 'image/jpg')
tipi.save

puts 'Finished!'
