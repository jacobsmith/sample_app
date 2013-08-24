namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example School",
                 email: "example@example.com",
                 password: "password",
                 password_confirmation: "password",
                 admin: true)
  end
=begin
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@thanktheteacher.com"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

  task populate: environment do
    Campaign.create!(title: "Winter Gift Card Campaign",
                     description: "Show our staff how much you appreciate them and share the warmth of the holiday season by contributing to their Gift Card account. A note will accompany the cards recognizing the contributors’ names. As a bonus, 5% of all orders go back to our school. Don’t forget your bus driver, specials teachers and school staff too!",
                     end_date: "2050-12-24",
                     user_id: 1)

  end
end
=end