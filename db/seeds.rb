company_names = ["Toys-R-I", "CPC", "init-0-edu", "Slicez Barber Shop"]
industries = ["Toy", "Medical", "Education", "Services"]
4.times do |index|
    Company.create(name: company_names[index], industry: industries[index], size: 10, price_plan: "Middle")
end

User.create(first_name: "James-Ryan", last_name: "Stampley", username: "jstampley12", email: "james@gmail.com", password: "james123", company_id: 1)