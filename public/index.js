io = new RocketIO().connect();


// push to server
$(function(){
  $("#btn_hello").click(function(){
    io.push("hello", "hello world");
  });
});


// receive from server
io.on("hello", function(message){
  alert(message);
});
