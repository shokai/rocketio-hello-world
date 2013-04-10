require 'sinatra'
require 'sinatra/rocketio'
require 'sinatra/reloader' if development?
require File.expand_path 'main', File.dirname(__FILE__)

run Sinatra::Application
