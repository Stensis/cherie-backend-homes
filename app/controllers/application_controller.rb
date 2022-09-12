class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #HomePage
  get '/' do
    "Hello World"
  end
   #get method for user
  get '/users' do
   users = User.all
   users.to_json
  end
  get '/users/:id' do
    users = User.find(params[:id])
    users.to_json
  end

  #get method for house
  get '/houses' do
    nyumba = House.all
    status 200
    body nyumba.to_json

  end
  
  get '/houses/:id' do
    nyumba = House.find(params[:id])
    nyumba.to_json
  end

   #get method for vendor
  get '/vendors' do
  vendor = Vendor.all
  vendor.to_json
  end

  get '/vendors/:id' do
    vendors = Vendor.find(params[:id])
    vendors.to_json
  end

  #Post request for the house
   post '/create_house' do
   send_it = House.create(
    house_number:params[:house_number],
    floor_number:params[:floor_number],
    number_of_rooms:params[:number_of_rooms],
    location:params[:location],
    estimated_cost:params[:estimated_cost],
    view_day:params[:view_day],
    type_of_house:params[:type_of_house],
    picture_link:params[:picture_link],
    vendor_id:params[:vendor_id],
    user_id:params[:user_id]
   )
   status 200
   body 'house_created'
  end

  post '/create_user' do
    send_it = User.create(
      name:params[:name],
      contact:params[:contact],
      email:params[:email]
    )
    send_it.to_json
  end

  post '/create_vendor' do
    send_it = Vendor.create(
      vendor:params[:Vendor],
      phone_number:params[:phone_number]
    )
    send_it.to_json
  end

  #PATCH
  put '/houses/:id' do
    fix_it = House.find(params[:id])
    fix_it.update(
      house_number:params[:house_number],
      floor_number:params[:floor_number],
      number_of_rooms:params[:number_of_rooms],
      location:params[:location],
      estimated_cost:params[:estimated_cost],
      view_day:params[:view_day],
      type_of_house:params[:type_of_house],
      picture_link:params[:picture_link],
      vendor_id:params[:vendor_id],
      user_id:params[:user_id]
    )
    fix_it.to_json
  end
 #patch methods of vendors
  put '/vendors/:id' do
    fix_it = Vendor.find(params[:id])
    fix_it.update(
      vendor:params[:Vendor],
      phone_number:params[:phone_number]
    )
    fix_it.to_json
  end

  put '/users/:id' do
    fix_it = User.find(params[:id])
    fix_it.update(
      name:params[:name],
      contact:params[:contact],
      email:params[:email]
    )
    fix_it.to_json
  end

  #DELETE
  delete '/vendors/:id' do
    erase = Vendor.find(params[:id])
    erase.destroy
    status 200
     body 'vendor_deleted'
  end
  delete '/users/:id' do
    erase = User.find(params[:id])
    erase.destroy
    status 200
    body 'users_deleted'
  end
  delete '/houses/:id' do
    erase = House.find(params[:id])
    erase.destroy
    status 200
    body 'house_deleted'
  end

end