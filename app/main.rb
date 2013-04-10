io = Sinatra::RocketIO

## receive from client
io.on :hello do |message, client|
  puts "> receive #{message} from #{client}"

  ## push to client
  io.push :hello, message
end


get '/' do
  erb :index
end
