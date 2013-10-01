io = Sinatra::RocketIO

## receive "hello" from client
io.on :hello do |message, client|
  puts "> receive '#{message}' from #{client.session} (#{client.type} #{client.address})"

  ## push "echo" to client
  io.push :echo, message
end

get '/' do
  erb :index
end
