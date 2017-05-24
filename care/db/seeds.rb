# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(firstname: 'john', lastname: 'doe', primaryaddress: '123 test ave', country: 'canada', province: 'ontario', city: 'toronto', postalcode: 'a1b 2c3', homephone: '3216540987', cellphone: '6543217890', workphone: '1234567890', extension: '1234',email: 'test@test.com', birthday: '01-01-1991', sex: 'm')