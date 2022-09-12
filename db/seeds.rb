puts "🌱 Seeding spices..."

#users
User.create(name:"Irene", contact:0701234564, email:"irene@67")
User.create(name:"Jane", contact:0701234564, email:"jane@47")
User.create(name:"Angela", contact:0701234564, email:"angela@99")
User.create(name:"Edwin", contact:0701234564, email:"edwin@34")
User.create(name:"Antony", contact:0701234564, email:"antony@23")

#houses
House.create(house_number:4, floor_number:3, number_of_rooms:6, location:"Ngong", estimated_cost:560993,view_day:"Tuesday", type_of_house:"Mansion", image_url:"https://www.gannett-cdn.com/presto/2021/01/12/NPBD/08d0fd5e-2255-4d49-b608-e83342ae4615-PBN_POOL_REAR_535_N_County_Road_HiRes_PictureItSoldFL.jpg?crop=1279,720,x0,y64&width=1279&height=720&format=pjpg&auto=webp", vendor_id:3, user_id:2)
House.create(house_number:3, floor_number:2, number_of_rooms:8, location:"Muthaiga", estimated_cost:51829393,view_day:"Monday", type_of_house:"Bungalow", image_url:"https://media.istockphoto.com/photos/beautiful-luxury-home-picture-id1281180946?b=1&k=20&m=1281180946&s=170667a&w=0&h=h41X68HEksHINqg2OBvJvZaCKkRaAYAQhsA8z-lwYqc=", vendor_id:5, user_id:1)
House.create(house_number:2, floor_number:1, number_of_rooms:4, location:"Great Walls", estimated_cost:27372893,view_day:"Wednesday", type_of_house:"Apartment", image_url:"https://i.pinimg.com/originals/4a/a9/55/4aa955a400be6c95a34a61bb0094ba35.jpg", vendor_id:2, user_id:3)
House.create(house_number:1, floor_number:4, number_of_rooms:10, location:"Ngong", estimated_cost:56373893,view_day:"Thursday", type_of_house:"Mansion", image_url:"https://i.ytimg.com/vi/Vl_JrEWZaHI/maxresdefault.jpg", vendor_id:1, user_id:4)
House.create(house_number:5, floor_number:2, number_of_rooms:3, location:"Juja", estimated_cost:123993,view_day:"Friday", type_of_house:"Cottage", image_url:"https://i.pinimg.com/736x/99/f1/94/99f1947c234101adbf5a82875ea95d3b--english-country-cottages-english-cottage.jpg", vendor_id:3, user_id:3)
House.create(house_number:4, floor_number:2, number_of_rooms:12, location:"Syokimau", estimated_cost:56093293,view_day:"Saturday", type_of_house:"Villa", image_url:"https://img.freepik.com/premium-photo/interior-exterior-design-luxury-pool-villa_176546-284.jpg?w=2000", vendor_id:4, user_id:2)

#vendors
Vendor.create(name:"Njuguna", phone_number:257261783, location:"Karen")
Vendor.create(name:"Salome", phone_number:237394343, location:"Syokimau")
Vendor.create(name:"Mariga", phone_number:237173783, location:"Kiambu")
Vendor.create(name:"Nduti", phone_number:13773783, location:"Donholm")
Vendor.create(name:"Charles", phone_number:23726783, location:"Thika")

puts "✅ Done seeding!"
