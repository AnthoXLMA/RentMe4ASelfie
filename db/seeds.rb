# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Creating products...'

product1 = Product.new(
    name: 'Tony Parker',
    category: 'Sport',
    price_per_rent: 200
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product1.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product1.save

product2 = Product.new(
    name: 'Lamborghini',
    category: 'Car',
    price_per_rent: 50
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
  )
product2.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product2.save

product3 = Product.new(
    name: 'Clown',
    category: 'Diary',
    price_per_rent: 30
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product3.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product3.save

product4 = Product.new(
    name: 'Stomy Bugsy',
    category: 'Music',
    price_per_rent: 200
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product4.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product4.save

product5 = Product.new(
    name: 'Vincent Cassel',
    category: 'Celebrity',
    price_per_rent: 400
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product5.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product5.save

product6 = Product.new(
    name: 'Tony Parker',
    category: 'Sport',
    price_per_rent: 200
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product6.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product6.save

product7 = Product.new(
    name: 'Ferrari F40',
    category: 'Vehicles',
    price_per_rent: 200
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product7.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product7.save

product8 = Product.new(
    name: 'Ducati 40',
    category: 'Moto',
    price_per_rent: 150
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product8.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product8.save

product9 = Product.new(
    name: 'Britney Spears',
    category: 'Celebrity',
    price_per_rent: 230
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product9.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product9.save

product10 = Product.new(
    name: 'Yacht 450TDS',
    category: 'Boats',
    price_per_rent: 200
    # photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
)
product10.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product10.save
# products = Product.create([
#   {
#     name: 'Tony Parker',
#     category: 'Sport',
#     price_per_rent: 200,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Lamborghini',
#     category: 'Car',
#     price_per_rent: 50,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Clown',
#     category: 'Diary',
#     price_per_rent: 30,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Stomy Bugsy',
#     category: 'Music',
#     price_per_rent: 200,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Vincent Cassel',
#     category: 'Celebrity',
#     price_per_rent: 400,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Ferrari F40',
#     category: 'Vehicles',
#     price_per_rent: 200,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Ducati 40',
#     category: 'Moto',
#     price_per_rent: 150,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Britney Spears',
#     category: 'Celebrity',
#     price_per_rent: 230,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Yacht 450TDS',
#     category: 'Boats',
#     price_per_rent: 200,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   },
#   {
#     name: 'Legos World',
#     category: 'Games',
#     price_per_rent: 400,
#     photo: url(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
#   }
# ])
# products.photo.attach(io: file, filename: 'lambo.jpeg', content_type: 'image/jpeg')
# products.save
# AdminUser.create!(email: 'admi@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts 'Finished!'
