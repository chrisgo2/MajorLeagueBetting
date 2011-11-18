require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:name => "Example User",
                 :email => "example@railstutorial.org",
                 :username => "ExampleUsername",
                 :password => "foobar",
                 :password_confirmation => "foobar",
                 :money => '99')
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      username = "User-#{n+1}"
      password  = "password"
      money = '#{n+1}'
      User.create!(:name => name,
                   :email => email,
                   :username => username,
                   :password => password,
                   :password_confirmation => password,
                   :money => money)
    end
  end
end