
puts 'Cleaning database...'
User.destroy_all
Meuble.destroy_all


kevin = User.create!(
  email: 'totostrdyufjyg@gmail.com',
  password: '123456')

puts 'Creating meubles...'

# image = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574171146/canape.jpg')


  canape = Meuble.new(
    name:         'Canapé d\'angle',
    category:     'Bedroom',
    description:  'Canapé vintage en cuir blanc des années 80',
    height:        100,
    width:         600,
    length:        1200,
    daily_rate:    10,
    disponibility: true,
    user:          kevin)
  # canape.photo.attach(io: image, filename: 'some-image.jpg', content_type: 'image/jpg')
  canape.save
  puts "canape cree"

  rocking_chair = Meuble.create!(
    name:         'Rocking chair',
    category:     'Living Room',
    description:  'Magnifique rocking chair en osier',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    5,
    disponibility: true,
    user:          kevin)

  lamp = Meuble.create!(
    name:         'Lamp',
    category:     'Living Room',
    description:  'Lampe sur pied en inox',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    10,
    disponibility: true,
    user:          kevin)

  cuisiniere = Meuble.create!(
    name:         'Cuisinière',
    category:     'Kitchen',
    description:  'Cuisinière au gaz',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    50,
    disponibility: true,
    user:          kevin)

  baignoire = Meuble.create!(
    name:         'Baignoire',
    category:     'Bathroom',
    description:  'Baignoire à l\'ancienne',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    15,
    disponibility: true,
    user:          kevin)

  tipi = Meuble.create!(
    name:         'Tipi',
    category:     'Kids',
    description:  'Cabane indienne pour les enfants',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    2,
    disponibility: true,
    user:          kevin)

puts 'Finished!'
