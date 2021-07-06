require 'faker'

puts "Cleaning database..."
Article.destroy_all #clean up the seed each time we delete records in DB

puts "Creating data..."
10.times do
  Article.create(
    title: Faker::Kpop.iii_groups
	content: Faker::Quote.famous_last_words
)
end
puts "Finished!"


