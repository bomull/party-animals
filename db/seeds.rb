# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying all records..'
PartyAnimal.destroy_all
User.destroy_all
Booking.destroy_all
puts 'All records destroyed!'

categories = ["techno and house", "noise and experimental", "garage and drum 'n' bass", "hipster", "sexparty", "queer"]
locations = ["Berlin", "London"]
images = [ 'resized000.png', 'resized001.png', 'resized002.png',
           'resized003.png', 'resized004.png', 'resized005.png',
           'resized006.png', 'resized010.png', 'resized011.png',
           'resized012.png', 'resized022.png', '1.jpg', '2.jpg',
           '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '9.jpg',
           '10.jpg', '11.jpg']

counter = 0
images.length.times do
  user = User.new(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", email: "#{Faker::Internet.unique.email}", age: rand(24..43), password: "aaaaaa")
  user.save!
  pa = PartyAnimal.new(party_name: "#{Faker::FunnyName.unique.name}", user_id: "#{user.id}", category: "#{categories.sample}", location: "#{locations.sample}", image: "#{images[counter]}")
  counter += 1
  pa.save!
end

puts 'Created 30 new users and partyanimals'

# 30.times do
#   PartyAnimal.create(party_name: "#{Faker::FunnyName.name}")
# end



# create_table "bookings", force: :cascade do |t|
#     t.string "date"
#     t.string "description"
#     t.boolean "confirmed"
#     t.bigint "user_id"
#     t.bigint "party_animal_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["party_animal_id"], name: "index_bookings_on_party_animal_id"
#     t.index ["user_id"], name: "index_bookings_on_user_id"
#   end

#   create_table "party_animals", force: :cascade do |t|
#     t.string "party_name"
#     t.string "available_dates"
#     t.string "image"
#     t.string "category"
#     t.string "location"
#     t.bigint "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["user_id"], name: "index_party_animals_on_user_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "age"
#     t.string "image"
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end

#   add_foreign_key "bookings", "party_animals"
#   add_foreign_key "bookings", "users"
#   add_foreign_key "party_animals", "users"
# en
