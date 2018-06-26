# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

juridic_statuses = [
  'complete',
  'expired_or_not_good'
]

10.times do |index|
  Supplier.create(
    siret: Faker::Number.unique.number(14),
    corporate_name: Faker::Company.unique.name,
    juridic_status: juridic_statuses.sample,
    relance_mail: Faker::Number.number(3)
  )
end
