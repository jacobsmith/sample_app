# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create!(name: "Example School",
             email: "example@example.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

Campaign.create!(title: "Introducing: Amazon Gift Card Program for Example School",
	             description: "Show our staff how much you appreciate them and share the warmth of the holiday season by contributing to their Amazon gift card account. Simply click on the links below and choose the staff members and amounts you wish to gift. We will order Amazon gift cards and deliver them to the staff. A note will accompany the cards recognizing the contributor's names. Take the guess work out of gift cards and as a bonus, Amazon will send a percentage of money on orders back to our school. Don't forget your bus driver, specials teachers and school staff too! Please note this program is being provided as a convenience for our families, and is totally optional.",
	             end_date: "2014-12-12", 
	             user_id: "1"
                 )

Recipient.create([{ first_name: "John",
				    last_name: "Brown",
				    title: "Teacher",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" }, {

				    first_name: "Sally",
				    last_name: "Smith",
				    title: "Principal",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" }, {

				    first_name: "Joan",
				    last_name: "Blue",
				    title: "Teacher",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" }, {

				    first_name: "Fred",
				    last_name: "Day",
				    title: "Teacher",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" }, {

				    first_name: "Alice",
				    last_name: "Green",
				    title: "Teacher",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" }, {

				    first_name: "Fred",
				    last_name: "Lynn",
				    title: "Transportation",
				    price: "1",
				    user_id: "1",
				    campaign_id: "1" } 
				    ])