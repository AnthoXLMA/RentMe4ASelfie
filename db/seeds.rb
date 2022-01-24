# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Creating experiences...'
experience1 = Experience.create(name: 'Travels')
experience1.save

experience2 = Experience.create(name: 'Vehicles')
experience2.save

experience3 = Experience.create(name: 'Clothes')
experience3.save

experience4 = Experience.create(name: 'Celebrities')
experience4.save

experience5 = Experience.create(name: 'People')
experience5.save

puts 'Creating products...'
product1 = Product.new(
    name: 'Ducati',
    category: 'Vehicles',
    price_per_rent: 200,
    experience_id: experience2.id
)
product1.photo.attach(io: File.open(Rails.root.join('app/assets/images/DUCATI_PANIGALE_V4.jpeg')), filename: 'DUCATI_PANIGALE_V4.jpeg')
product1.save

product2 = Product.new(
    name: 'Lamborghini',
    category: 'Vehicles',
    price_per_rent: 50,
    experience_id: experience2.id
  )
product2.photo.attach(io: File.open(Rails.root.join('app/assets/images/lambo.jpeg')), filename: 'lambo.jpeg')
product2.save

product3 = Product.new(
    name: 'Clown',
    category: 'Clothes',
    price_per_rent: 30,
    experience_id: experience5.id
)
product3.photo.attach(io: File.open(Rails.root.join('app/assets/images/joker.jpeg')), filename: 'joker.jpeg')
product3.save

product4 = Product.new(
    name: 'Ferrari F40',
    category: 'Vehicles',
    price_per_rent: 200,
    experience_id: experience2.id
)
product4.photo.attach(io: File.open(Rails.root.join('app/assets/images/F40.jpeg')), filename: 'F40.jpeg')
product4.save

product5 = Product.new(
    name: 'Dancer',
    category: 'Diary',
    price_per_rent: 400,
    experience_id: experience5.id
)
product5.photo.attach(io: File.open(Rails.root.join('app/assets/images/dancer.jpeg')), filename: 'dancer.jpeg')
product5.save

product6 = Product.new(
    name: 'Rio de Janeiro',
    category: 'Travels',
    price_per_rent: 200,
    experience_id: experience1.id
)
product6.photo.attach(io: File.open(Rails.root.join('app/assets/images/rio_dej.jpeg')), filename: 'rio_dej.jpeg')
product6.save

product7 = Product.new(
    name: 'Porsche 911',
    category: 'Vehicles',
    price_per_rent: 200,
    experience_id: experience2.id
)
product7.photo.attach(io: File.open(Rails.root.join('app/assets/images/porsche_911.jpeg')), filename: 'porsche_911.jpeg')
product7.save

product8 = Product.new(
    name: 'Chrysler 300',
    category: 'Vehicles',
    price_per_rent: 150,
    experience_id: experience2.id
)
product8.photo.attach(io: File.open(Rails.root.join('app/assets/images/chrysler-300-2020.jpeg')), filename: 'chrysler-300-2020.jpeg')
product8.save

product9 = Product.new(
    name: 'Britney Spears',
    category: 'Celebrity',
    price_per_rent: 230,
    experience_id: experience4.id
)
product9.photo.attach(io: File.open(Rails.root.join('app/assets/images/br_spears.jpeg')), filename: 'br_spears.jpeg')
product9.save

product10 = Product.new(
    name: 'Yacht 450TDS',
    category: 'Boats',
    price_per_rent: 200,
    experience_id: experience2.id
)
product10.photo.attach(io: File.open(Rails.root.join('app/assets/images/yacht.jpeg')), filename: 'yacht.jpeg')
product10.save

# AdminUser.create!(email: 'admi@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts 'Finished!'
