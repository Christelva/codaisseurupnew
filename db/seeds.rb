Category.destroy_all
User.destroy_all

student_and_drinks = Category.create(name: "Students and Drinks")
social_and_drinks = Category.create(name: "Social and Drinks")
educational = Category.create(name: "Eduational")
kids  = Category.create(name: "Kids")
pets = Category.create(name: "Pets")
food_and_drinks = Category.create(name: "Food and Drinks")
culinary = Category.create(name: "Culinary")

christel = User.create( email: "christel@codaisseurup.com",
  password: '123456')
  sandy = User.create(email: "sandy@codaiseurup.com", password: "124578")
  dusty = User.create(email: "dusty@codaisseurup.com", password: "15683456")


start_time = DateTime.current
end_time = DateTime.current+1

Event.create(name: "Beerpong",description: "Beerpong with a 20% student discount between 10 and 12",location: "Cafe Royal", capacity: 300,price: 10.00,includes_food: false,includes_drinks: false, starts_at: start_time,ends_at: end_time,active: true,user: christel,categories: [student_and_drinks,social_and_drinks]
)


Event.create(name: "Walk with Alpacas",

  description: "Join our monthly Alpaca walk including a picnic after",
  location: "Green farm",
  capacity: 30,
  price: 5.00,
  includes_food: false,
  includes_drinks: false,
  starts_at: start_time,
  ends_at: end_time,
  active: true,
  user: sandy,
  categories: [pets,kids,food_and_drinks]
)


Event.create(name: "Winter festival",

  description: "A festival with tons of winter fun",
  location: "Rai",
  capacity: 1000,
  price: 25.00,
  includes_food: false,
  includes_drinks: false,
  starts_at: start_time,
  ends_at: end_time,
  active: true,
  user: dusty,
  categories: [kids, food_and_drinks]
)
