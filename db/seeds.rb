# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Pet.destroy_all 
Pet.reset_pk_sequence


21.times do 
    Pet.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age:Faker::Creature::Dog.age, location: 
    "NYC", img:"")
end


Pet.all.each do |pet| 
    pet_image = RestClient.get('https://dog.ceo/api/breeds/image/random')
    pet_message = JSON.parse(pet_image)["message"]
    pet.update(
        img: pet_message
    ) 
end

