# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sedona = Vacation.create(about:"Located in Az", name:"Sedona Elopement", payment_required: false, date_range: "Sept 19 - 22" )
friendsgiving = Vacation.create(about:"catalina", name:"Friendsgiving 2019", payment_required: true, date_range: "Thanksgiving")
jesse = User.create(name:"Jesse", image_url:"https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=933&q=80", email_address:"jessica.pope.co@gmail.com")
chris = User.create(name:"Chris", image_url:"", email_address:"seeken@gmail.com")
Event.create(name:"black bear coffee", amount:25, category:"dining", date_of_event: "11/22/2019", vacation_id: 2, user_id: 1)
UserVacation.create(user:jesse, vacation: friendsgiving)
UserVacation.create(user:chris, vacation: sedona)
UserVacation.create(user:jesse, vacation: sedona)
Event.create(name:"l'auberge", amount:25, category:"dining", date_of_event: "9/21/2019", vacation_id: 1, user_id: 1)
Event.create(name:"climbing permit", amount:25, category:"Recreation", date_of_event: "9/20/2019", vacation_id: 1, user_id: 1)
Event.create(name:"Airbnb", amount:1700, category:"lodging", date_of_event: "9/19/2019 - 9/21/2019", vacation_id: 1, user_id: 2)
