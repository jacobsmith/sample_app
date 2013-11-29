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

Campaign.create!(title: "Amazon Gift Card Program for Example School",
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

User.create!(name: "Fishers High School Softball and Athletics",
             email: "annettedoherty5@gmail.com",
             password: "Geist!0",
             password_confirmation: "Geist!0",
             admin: true)

Campaign.create!(title: "Holiday Gift Cards",
	             description: "Here is a quick and easy way to order gift cards for FHS teachers, coaches, staff and bus drivers.",
	             end_date: "2013-12-9", 
	             user_id: "2"
                 )

Recipient.create([ {
 first_name: "James",
 last_name: "Brown",
 title: "AD",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jon",
 last_name: "Miles",
 title: "AD",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jenny",
 last_name: "Brooks",
 title: "AD Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kevin",
 last_name: "Gallman",
 title: "Asst. Prin.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Valerie",
 last_name: "Piehl",
 title: "Asst. Prin.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Ryan",
 last_name: "Taylor",
 title: "Asst. Prin.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Vicky",
 last_name: "Dougherty",
 title: "Attendance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kimberly",
 last_name: "Zimmerman",
 title: "Attendance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Beverly",
 last_name: "Sharritt",
 title: "Blind Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robert",
 last_name: "Barker",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Becky",
 last_name: "Barnette",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Nancy",
 last_name: "Bickel",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kyra",
 last_name: "Brattain",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Hollis",
 last_name: "Burns",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Wanda",
 last_name: "Candelaria",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lisa",
 last_name: "Croghan",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michelle",
 last_name: "Dahlka",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sydney",
 last_name: "Earle",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Diane",
 last_name: "George-Seigel",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mary",
 last_name: "Gnadinger",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Deanna",
 last_name: "Hughes",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Cindy",
 last_name: "Johnson",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Vicki",
 last_name: "Lepper",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Stacy",
 last_name: "Lewis",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joyce",
 last_name: "Lika",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Anna",
 last_name: "Marangelli",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kim",
 last_name: "McMillan",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Celia",
 last_name: "Morales",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Marilyn",
 last_name: "Murray",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dianna",
 last_name: "Phillips",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chello",
 last_name: "Serritella",
 title: "Cafe",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kristy",
 last_name: "Ford",
 title: "Coach",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Loren",
 last_name: "Seale",
 title: "Copy Center",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "William",
 last_name: "Budreau",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tammy",
 last_name: "Daugherty",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tony",
 last_name: "Dunn",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rhonda",
 last_name: "Ennis",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Erica",
 last_name: "Griffin",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joy",
 last_name: "Kiskaden",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Loveless",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Christopher",
 last_name: "Lynch",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Caroline",
 last_name: "Marshall",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "James",
 last_name: "Muldoon",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chad",
 last_name: "Neff",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sonya",
 last_name: "Pearson",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jamie",
 last_name: "Perry",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rebecca",
 last_name: "Schwartzkopf",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Vineyard",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rick",
 last_name: "Watson",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sherry",
 last_name: "Wells",
 title: "Custodian",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Greg",
 last_name: "Miller",
 title: "Dean",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robert",
 last_name: "Seymour",
 title: "Dean",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Long",
 title: "Floating Sub",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kelly",
 last_name: "Applegate",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Brown",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Brandon",
 last_name: "Cloud",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lindsay",
 last_name: "Gross",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kristopher",
 last_name: "Harney",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Amy",
 last_name: "Klink",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Matt",
 last_name: "Swaim",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Melanie",
 last_name: "Thomas",
 title: "Guidance",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rachael",
 last_name: "Allen",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Bryn",
 last_name: "Bailey",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tammy",
 last_name: "Elliott",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Andrew",
 last_name: "Fountain",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Warren",
 last_name: "Sidwell",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Eric ",
 last_name: "Sprague",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Marcie",
 last_name: "Vance",
 title: "IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Frank ",
 last_name: "Kendrick",
 title: "IA Study Hall",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mike",
 last_name: "Sivak",
 title: "IA Study Hall",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kelly",
 last_name: "Siegert",
 title: "IA Writing Lab",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Annette",
 last_name: "Doherty",
 title: "IA/Job Coach",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Eileen",
 last_name: "McAleavey",
 title: "Job Coach",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Renee",
 last_name: "Isom",
 title: "Media Center",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kim",
 last_name: "Deal",
 title: "Nurse",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Amy",
 last_name: "Hanna",
 title: "Nurse",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Ann",
 last_name: "O'Haver",
 title: "Nurse",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Helen",
 last_name: "Mahoney",
 title: "Nurse 1 on 1",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tamara",
 last_name: "Sipt",
 title: "Occu. Ther.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Colleen",
 last_name: "Bowen",
 title: "Ortho. Impa.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Marno",
 last_name: "Lane",
 title: "Ortho. Impa.",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jill",
 last_name: "Benvenutti",
 title: "Permanent Substitute",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Pete",
 last_name: "Byrd",
 title: "Permanent Substitute",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mary",
 last_name: "Hudson",
 title: "Permanent Substitute",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Deb ",
 last_name: "Gastineau",
 title: "Physical Therapist",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jason",
 last_name: "Urban",
 title: "Principal",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joe",
 last_name: "Cahoe",
 title: "Psychologist",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Beth",
 last_name: "Duffy",
 title: "Receptionist",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Cheryl",
 last_name: "Carothers",
 title: "Registrar",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Burkett",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Keenan",
 last_name: "Copeland",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jill",
 last_name: "DeMoss",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Pamela",
 last_name: "Gorgol",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robin",
 last_name: "Lusk",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chris",
 last_name: "Mason",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Judy",
 last_name: "Schnettgoecke",
 title: "Secretary",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Marc",
 last_name: "Farrow",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dorothy",
 last_name: "Martin",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kathryn",
 last_name: "Potter",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Julianne",
 last_name: "Putman",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Peggy",
 last_name: "Ranz",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joe",
 last_name: "Riordan",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jon",
 last_name: "Stumpf",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Meghan",
 last_name: "Young",
 title: "Sp. Ed. IA",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Julie",
 last_name: "Cutter",
 title: "Speech",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Erin",
 last_name: "Rotterman",
 title: "Speech",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Shannon",
 last_name: "Temaat",
 title: "Substitute Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Ray",
 last_name: "Tolbert",
 title: "Substitute Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Whipple",
 title: "Substitute Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Amy",
 last_name: "Asher",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Melinda",
 last_name: "Baker",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Darcy",
 last_name: "Banitt",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lee",
 last_name: "Banitt",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Bankert",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Anthony",
 last_name: "Barnes",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Benjamin",
 last_name: "Beasley",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Haley",
 last_name: "Beauchamp",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Heather",
 last_name: "Berry",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Andrea",
 last_name: "Bookmyer",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kristine",
 last_name: "Brown",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lisa",
 last_name: "Brown",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Abbey",
 last_name: "Browning",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "John",
 last_name: "Carpenter",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Matthew",
 last_name: "Cherry",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dahnya",
 last_name: "Chop",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Cara",
 last_name: "Clippinger",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jon",
 last_name: "Colby",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lori",
 last_name: "Cornell",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rhonda",
 last_name: "Craver",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Shawn",
 last_name: "Crull",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Steven",
 last_name: "Curtis",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Deedrick",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Nicole",
 last_name: "DeGuire",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lauren",
 last_name: "Deter",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sheri",
 last_name: "Dimos",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Leann",
 last_name: "Dixon",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Erin",
 last_name: "Domokos",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "John",
 last_name: "Drozd",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sarah",
 last_name: "Druelinger",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dathan",
 last_name: "Echols",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Stephen",
 last_name: "Edwards",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Susan",
 last_name: "Eickstead",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Steven",
 last_name: "Emerson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Haley",
 last_name: "Englert",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "James",
 last_name: "Fagan",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Heather",
 last_name: "Ferguson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Brittany",
 last_name: "Filbrun",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Brent",
 last_name: "Freed",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Gabbard",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Gaines",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Gear",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jessica",
 last_name: "Geisinger",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robin",
 last_name: "Geisinger",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Trey",
 last_name: "Gill",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kelley",
 last_name: "Goldsberry",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Elizabeth",
 last_name: "Good ",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kyle",
 last_name: "Goodwin",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Bridgit",
 last_name: "Goss",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Christina",
 last_name: "Graybeal",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Peter",
 last_name: "Griffin",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Karen",
 last_name: "Hanawalt",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Hartley",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Deborah",
 last_name: "Hejl",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michelle",
 last_name: "Helmkamp",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Richard",
 last_name: "Henry",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robert",
 last_name: "Hoffman",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Julie",
 last_name: "Hummel",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Suzie",
 last_name: "Huppenthal",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kelli",
 last_name: "Jacobs",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Elizabeth",
 last_name: "Jahns",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Greg",
 last_name: "Johnson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "John",
 last_name: "Jud",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Erica",
 last_name: "Kelly",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Kelly",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Travis",
 last_name: "Kemper",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Paul",
 last_name: "Kennedy",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Gretchen",
 last_name: "Kinney",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kim",
 last_name: "Klotz",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chad",
 last_name: "Kohler",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lance",
 last_name: "Kuhn",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Charles",
 last_name: "Kunz",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Bob",
 last_name: "Lasley",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joseph",
 last_name: "Leonard",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Shelley",
 last_name: "Lidy",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Daniel",
 last_name: "Mach",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kathleen",
 last_name: "Mark",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kristin",
 last_name: "Marr",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Patrick",
 last_name: "McDaniel",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Hedy",
 last_name: "McGrath",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Carmen",
 last_name: "Napolitano",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Adam",
 last_name: "Nelson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Amy",
 last_name: "Newquist",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Danielle",
 last_name: "Ontiveros",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jasmine",
 last_name: "Osborne",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Elizabeth",
 last_name: "Paternoster",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mark",
 last_name: "Pierson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Matt",
 last_name: "Poisel",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Pope",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jenna",
 last_name: "Pritchard",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Michael",
 last_name: "Rawnsley",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Daniel",
 last_name: "Reddan",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Frances",
 last_name: "Reigle",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kelsey",
 last_name: "Robertson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kathleen",
 last_name: "Robeson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mathew",
 last_name: "Rund",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kevin",
 last_name: "Ryan",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Angie",
 last_name: "Schneider",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Patrick",
 last_name: "Schooley",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Glenn",
 last_name: "Seland",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Gretchen",
 last_name: "Shafer",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Brian",
 last_name: "Shults",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Andrew",
 last_name: "Smith",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Daniel",
 last_name: "Smith",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Sarah",
 last_name: "Snodgrass",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "David",
 last_name: "Spargo",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tammie",
 last_name: "Spencer",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Matthew",
 last_name: "Stahl",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Susanne",
 last_name: "Stapleton",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jonathon",
 last_name: "Statzer",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chrissie",
 last_name: "Sturgill",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Karen",
 last_name: "Survant",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kaitlyn",
 last_name: "Thompson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Terri",
 last_name: "Thompson-Mejias",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Tice",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Julie",
 last_name: "Tobias",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Allen",
 last_name: "Trout",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "David",
 last_name: "Turner",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lauren",
 last_name: "Vail",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Alisa",
 last_name: "Vancel",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Renee",
 last_name: "Vanlandingham",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Vrabec",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Nathan",
 last_name: "Warnecke",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Erin",
 last_name: "Warner",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dena",
 last_name: "Wenger",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Louise",
 last_name: "Werner",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lisa",
 last_name: "Wilson",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Rick",
 last_name: "Wimmer",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Benjamin",
 last_name: "Wyss",
 title: "Teacher",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Marcy",
 last_name: "Clone",
 title: "Teacher - Part-time",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tammy",
 last_name: "Snyder",
 title: "Teacher - Part-time",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Tom",
 last_name: "Younts",
 title: "Teacher - Travel",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Heather",
 last_name: "Droz",
 title: "Teacher Deaf",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Anne",
 last_name: "Feicke",
 title: "Tech",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Samantha",
 last_name: "Ringo",
 title: "Temporary English ",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Chrissy",
 last_name: "Pogue",
 title: "Transition Specialist",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jennifer",
 last_name: "Hall",
 title: "Treasurer",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Carol",
 last_name: "Albright",
 title: "Bus 319wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jill",
 last_name: "Altman",
 title: "Bus 165",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Joan",
 last_name: "Beatty",
 title: "Bus 188",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Christine",
 last_name: "Bershell",
 title: "Bus 44",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lewis",
 last_name: "Bershell",
 title: "Bus 242",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jackie",
 last_name: "Black",
 title: "Bus 255",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Janet",
 last_name: "Brown-Jacobs",
 title: "Bus 63",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Cherie",
 last_name: "Bryant",
 title: "Bus 189",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Stan",
 last_name: "Clark",
 title: "Bus 169",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Betty",
 last_name: "Clark",
 title: "Bus 180",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dawn",
 last_name: "Clinton",
 title: "Bus 170",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Mae",
 last_name: "Davis",
 title: "Bus 116",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kim",
 last_name: "Derington",
 title: "Bus 98",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Laney",
 last_name: "Dezelan",
 title: "Bus 57",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Lachaunda",
 last_name: "Frazier",
 title: "Bus 325wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Diane",
 last_name: "George-Seigel",
 title: "Bus 141",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "BJ",
 last_name: "Hudson",
 title: "Bus 198",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jake",
 last_name: "Jackson",
 title: "Bus 48",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kathy",
 last_name: "June",
 title: "Bus 123",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kurt",
 last_name: "Krizek",
 title: "Bus 248",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Linda",
 last_name: "Ling",
 title: "Bus 175",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Peggy",
 last_name: "Lynn",
 title: "Bus 55",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dan",
 last_name: "Marshall",
 title: "Bus 68",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Bob",
 last_name: "Murphy",
 title: "Bus 320wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Julian",
 last_name: "Payne",
 title: "Bus 222",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Cindy",
 last_name: "Poynter",
 title: "Bus 86",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Paul",
 last_name: "Rairden",
 title: "Bus 46",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Patty",
 last_name: "Randall",
 title: "Bus 328wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Russ",
 last_name: "Reichert",
 title: "Bus 220",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Peggy",
 last_name: "Reynolds",
 title: "Bus 3",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Robin",
 last_name: "Rodriguez",
 title: "Bus 70",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Gloria",
 last_name: "Schieman",
 title: "Bus 254",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kim",
 last_name: "Sloan",
 title: "Bus 149wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Richard",
 last_name: "Swiss",
 title: "Bus 145wc",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Jolie",
 last_name: "Tecsi",
 title: "Bus 104",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Kathy",
 last_name: "Underwood",
 title: "Bus 84",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Dean",
 last_name: "Whippo",
 title: "Bus 14",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Don",
 last_name: "Wilderson",
 title: "Bus 231",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "AnneMarie",
 last_name: "Zielinski",
 title: "Bus 194",
 price: "1",
 user_id: "2",
 campaign_id: "2"
},
{
 first_name: "Brenda",
 last_name: "Ziminsky",
 title: "Bus 243",
 price: "1",
 user_id: "2",
 campaign_id: "2"
}])
