require 'sinatra'
require 'yaml/store'
require 'sinatra/activerecord'
require 'sinatra/cross_origin'
require './config/environments'
require './config/cors'
require 'json'


Choices = Array.new([])

class Model < ActiveRecord::Base
    validates :cake, presence: true
end

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
        @model.to_json
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

post '/upload' do
    @tags = JSON.parse(request.body.read)
    @tags.each do |item|
        list = Model.where(id: item["id"]).first
        if list
            list.cake = item["cake"]
            if list.save
                list.to_json
                else
                halt 422, list.errors.full_messages.to_json
            end
        end
    end
end

get '/list' do
    content_type :json
    @models = Model.all.to_json
end

get '/list/:id' do
    @models = Model.where(id: params['id']).first.to_json
    @id = Model.where(id: params['id']).first.id
    erb :editjson
end

post '/list' do
    @model = Model.new(params[:model])
    
    if @model.save
        @model.to_json
        puts 'Saved'
        else
        halt 422, list.errors.full_messages.to_json
    end
end

put '/list/:id' do
        puts 'hello'
    list = Model.where(id: params['id']).first
    if list
        list.cake = params['cake'] if params.has_key?('cake')
        puts 'hello'
        if list.save
            list.to_json
            else
            halt 422, list.errors.full_messages.to_json
        end
    end
end

delete '/list/:id' do

    list = Model.where(id: params['id'])
    
    if list.destroy_all
        {success: "ok"}.to_json
        else
        halt 500
    end
    
    erb :deleted
end
