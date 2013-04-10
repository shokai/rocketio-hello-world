io = new RocketIO().connect();


// push "hello" to server
$(function(){
  $("#btn").click(function(){
    var message = $("#text").val();
    io.push("hello", message);
  });
});


// receive "echo" from server
io.on("echo", function(message){
  alert(message);
});
