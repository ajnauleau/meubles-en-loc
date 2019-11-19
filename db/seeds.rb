
puts 'Cleaning database...'
Meuble.destroy_all


kevin = User.create!(
  email: 'toto@gmail.com',
  password: '123456')

puts 'Creating meubles...'
meubles_attributes = [

  {
    name:         'Canapé d angle',
    category:     'Living Room',
    description:  'Canapé vintage en cuir blanc des années 80',
    height:        100,
    width:         600,
    length:        1200,
    daily_rate:    10,
    disponibility: true,
    user:          kevin
  },

  {

    name:         'Rocking chair',
    category:     'Living Room',
    description:  'Magnifique rocking chair en osier',
    height:        80,
    width:         250,
    length:        100,
    daily_rate:    5,
    disponibility: true,
    user:          kevin
}
]

Meuble.create!(meubles_attributes)
puts 'Finished!'
