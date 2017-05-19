require 'sinatra'
require 'yaml/store'
require 'sinatra/activerecord'
require './config/environments'
require './models/model'

Choices = Array.new([])

get '/' do
    @title="Welcome"
    f = File.open("cake.list", "r")
    f.each_line do |line|
        puts line
        Choices.push(line)
    end
    f.close
    erb :index
end

post '/submit' do
    @title = "Database Cake"
    @model = Model.new(params[:model])
    if @model.save
        redirect '/models'
        else
        "Sorry, there was an error!"
    end
end

get '/models' do
    @title = "Database Cake"
    @models = Model.all
    erb :models
end
