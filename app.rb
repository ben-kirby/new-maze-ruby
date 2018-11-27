require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')
require('pry')

get("/") do
  erb(:start)
end

post('/start') do
  @selection = params.fetch('start')

  direction = Maze.new(@selection)
  if direction.direction == true
    erb(:room_two)
  else
    erb(:deadend)
  end
end

post('/room2') do
  @selection = params.fetch('select')

  direction = Maze.new(@selection)
  if direction.direction == true
    erb(:room_three)
  else
    erb(:deadend)
  end
end



















# post ("/start") do
#   @select = params.fetch("start")
#   direction = Maze.new(@select)
#   if direction == true
#     erb(:room_two)
#   end
# end

# post ("/room2") do
#   @select = params.fetch("select")
#
#   direction = Maze.new(@select)
#   if @select == "right"
#     erb(:room_three)
#   else
#     erb(:deadend)
#   end
# end
#
# post ("/room3") do
#   @select = params.fetch("select")
#
#   direction = Maze.new(@select)
#   if @select == "right"
#     erb(:room_four)
#   else
#     erb(:deadend)
#   end
# end
#
# post ("/room2") do
#   @select = params.fetch("select")
#
#   direction = Maze.new(@select)
#   if @select == "right"
#     erb(:room_three)
#   else
#     erb(:deadend)
#   end
# end
