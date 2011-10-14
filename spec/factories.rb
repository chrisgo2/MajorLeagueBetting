Factory.define :user do |user|
  user.name                  "Some User"
  user.username              "SomeUserName"
  user.email                 "someuser@foobar.com"
  user.password              "password"
  user.password_confirmation "password"
end