RocketIO Hello World
====================

very simple [Sinatra RocketIO](https://github.com/shokai/sinatra-rocketio) application.

* https://github.com/shokai/rocketio-hello-world
* [demo](http://dev.shokai.org:4100)

Install Dependencies
--------------------

    % cd app
    % gem install bundler
    % bundle install


Run
---

    % rackup config.ru -p 5000

```
>> Thin web server (v1.5.1 codename Straight Razor)
>> Maximum connections set to 1024
>> Listening on 0.0.0.0:5000, CTRL+C to stop
Sinatra::WebSocketIO.start port:8080
```

=> http://localhost:5000


set websocket port

    % WS_PORT=5001 rackup config.ru -p 5000