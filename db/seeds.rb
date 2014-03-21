# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["Admin", "admin@gmail.com", "123456", "123456"],
  ["User1", "user1@gmail.com", "123456", "123456"],
  ["User2", "user2@gmail.com", "123456", "123456"],
  ["User3", "user3@gmail.com", "123456", "123456"],
  ["User4", "user4@gmail.com", "123456", "123456"]
]
user_list.each do |u|
  User.create(name: u[0], email: u[1], password: u[2], password_confirmation: u[3])
end

currency_list = [
  ["Viet Nam Dong", "VND", 1],
  ["Dola My", "USD", 21000],
  ["Bang Anh", "GBP", 33000],
  ["Dong Euro", "EUR", 27000],
]
currency_list.each do |c|
  M::Currency.create(name: c[0], code: c[1], balance: c[2])
end

category_type_list = [
  ["Thu", "Tat ca cac khoan lam vi cua ban phinh ra :3"],
  ["Chi", "Tat ca cac khoan lam vi cua ban xep xuong :v"]
]
category_type_list.each do |ct|
  M::CategoryType.create(name: ct[0], description: ct[1])
end




