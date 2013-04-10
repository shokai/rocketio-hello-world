io = Sinatra::RocketIO

io.on :connect do |client|
  puts "new client : #{client}"
end

io.on :disconnect do |client|
  puts "bye : #{client}"
end


## receive from client
io.on :hello do |message, client|
  puts "> receive #{message} from #{client}"

  ## push to client
  io.push :hello, message
end


get '/' do
  erb :index
end
