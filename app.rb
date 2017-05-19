require 'sinatra'
require 'yaml/store'

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
