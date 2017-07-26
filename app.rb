require "sinatra"

get '/' do 
    erb :first_name 
end

post '/name' do
  first_name = params[:first_nam]
    redirect '/last_name?first_nam=' + first_name 
end 

get '/last_name' do
    first_name = params[:first_nam]
erb :last_name, locals: {first_name: first_name}
end

post '/l_name' do
last_name = params[:last_nam]
first_name = params[:first_nam]
     #"#{f_name} and #{last_nam}"
redirect '/age?first_nam='+ first_name + '&last_nam='+ last_name
end

get '/age' do
     last_name = params[:last_nam]
     first_name = params[:first_nam]
     age = params[:age]
     erb :age, locals: {first_n: first_name, last_n: last_name}
end

post '/age' do
     last_name = params[:last_nam]
     first_name = params[:first_nam]
     age = params[:age]
  redirect 'fav_food?first_nam='+ first_name + '&last_nam='+ last_name + '&age='+ age
end

get '/fav_food' do
     last_name = params[:last_nam]
     first_name = params[:first_nam]
     age = params[:age]
     erb :fav_food, locals:  {first_n: first_name, last_n: last_name, age: age}
end

post '/fav_food' do
    last_name = params[:last_nam]
    first_name = params[:first_nam]
    age = params[:age]
    fav_food = params[:food]
    # "#{fav_food}"
    redirect 'fav_drink?first_nam='+ first_name + '&last_nam='+ last_name + '&age='+ age + '&food='+ fav_food
end

get '/fav_drink' do
    last_name = params[:last_nam]
    first_name = params[:first_nam]
    age = params[:age]
    fav_food = params[:food]
    # "#{fav_food} yo look here!!!!"
    erb :fav_drink, locals: {first_n: first_name, last_n: last_name, age: age, food: fav_food}
end 

post '/fav_drink' do
    last_name = params[:last_nam]
    first_name = params[:first_nam]
    age = params[:age]
    fav_food = params[:food]
    fav_drink = params[:drink]
    redirect '/hair_color?first_nam='+ first_name + '&last_nam='+ last_name + '&age='+ age + '&food='+ fav_food + '&drink='+ fav_drink
# "#{last_name} #{first_name} #{age} #{fav_food} #{fav_drink} yo look here !!!!!"
end

get '/hair_color' do
     last_name = params[:last_nam]
    first_name = params[:first_nam]
    age = params[:age]
    fav_food = params[:food]
    fav_drink = params[:drink]
    erb :hair_color, locals: {first_n: first_name, last_n: last_name, age: age, food: fav_food, drink: fav_drink} 
end

post '/hair_color' do
    last_name = params[:last_nam]
    first_name = params[:first_nam]
    age = params[:age]
    fav_food = params[:food]
    fav_drink = params[:drink]
    hair_color = params[:hair_c]
    eye_color = params[:eye_c]
  redirect 'three_lucky_nums?first_nam='+ first_name + '&last_nam='+ last_name + '&age='+ age + '&food='+ fav_food + '&drink='+ fav_drink +'&hair_c='+ hair_color + '&eye_c='+ eye_color
end

get '/three_lucky_nums' do
     last_name = params[:last_nam]
    first_name = params[:first_nam]
     age = params[:age]
    fav_food = params[:food]
    fav_drink = params[:drink]
    hair_color = params[:hair_c]
    eye_color = params[:eye_c]
    erb :three_lucky_nums, locals:{first_n: first_name, last_n: last_name, age: age, food: fav_food, drink: fav_drink, hair_c: hair_color, eye_c: eye_color} 
end

post '/three_lucky_nums' do
    last_name = params[:last_nam]
    first_name = params[:first_nam]
    lucky_num1 = params[:lnum1]
    lucky_num2 = params[:lnum2]
    lucky_num3 = params[:lnum3]
    age = params[:age]
    fav_food = params[:food]
    fav_drink = params[:drink]
    hair_color = params[:hair_c]
    eye_color = params[:eye_c]
  redirect 'final?first_nam='+ first_name + '&last_nam='+ last_name + '&age='+ age + '&food='+ fav_food + '&drink='+ fav_drink + '&hair_c='+ hair_color + '&eye_c='+ eye_color + '&lnum1='+ lucky_num1 + '&lnum2='+ lucky_num2 + '&lnum3='+ lucky_num3
end

def add(lnum1, lnum2, lnum3)
    lnum1.to_i + lnum2.to_i + lnum3.to_i
end

get '/final' do
     last_name = params[:last_nam]
    first_name = params[:first_nam]
     age = params[:age]
     fav_food = params[:food]
     fav_drink = params[:drink]
     hair_color = params[:hair_c]
    eye_color = params[:eye_c]
      lucky_num1 = params[:lnum1]
    lucky_num2 = params[:lnum2]
    lucky_num3 = params[:lnum3]
    answer = add(lucky_num1, lucky_num2, lucky_num3)
    erb :final, locals:{first_n: first_name, answer: answer, last_n: last_name, age: age, food: fav_food, drink: fav_drink, hair_c: hair_color, eye_c: eye_color, lnum1: lucky_num1, lnum2: lucky_num2, lnum3: lucky_num3} 
end






 




    















