def create_user(name:, email:, admin: false)
  User.new(name: name, email: email, password: '1', admin:).save!(validate: false)
end

create_user name: "Деян", email: "admin@example.com", admin: true
create_user name: "Виктор", email: "student@example.com"

1.upto(100) do |i|
  Question.create! text: "#{i} + #{i}", answer: "#{i * 2}"
end
