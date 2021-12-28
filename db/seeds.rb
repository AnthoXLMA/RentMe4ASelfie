# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Creating products...'

product1 = Product.new(
    name: 'Tony Parker',
    category: 'Sport',
    price_per_rent: 200
)
product1.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product1.save

product2 = Product.new(
    name: 'Lamborghini',
    category: 'Car',
    price_per_rent: 50
  )
product2.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product2.save

product3 = Product.new(
    name: 'Clown',
    category: 'Diary',
    price_per_rent: 30
)
product3.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product3.save

product4 = Product.new(
    name: 'Stomy Bugsy',
    category: 'Music',
    price_per_rent: 200
)
product4.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product4.save

product5 = Product.new(
    name: 'Vincent Cassel',
    category: 'Celebrity',
    price_per_rent: 400
)
product5.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product5.save

product6 = Product.new(
    name: 'Tony Parker',
    category: 'Sport',
    price_per_rent: 200
)
product6.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product6.save

product7 = Product.new(
    name: 'Ferrari F40',
    category: 'Vehicles',
    price_per_rent: 200
)
product7.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product7.save

product8 = Product.new(
    name: 'Ducati 40',
    category: 'Moto',
    price_per_rent: 150
)
product8.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product8.save

product9 = Product.new(
    name: 'Britney Spears',
    category: 'Celebrity',
    price_per_rent: 230
)
product9.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product9.save

product10 = Product.new(
    name: 'Yacht 450TDS',
    category: 'Boats',
    price_per_rent: 200
)
product10.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product10.save

# AdminUser.create!(email: 'admi@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts 'Finished!'
