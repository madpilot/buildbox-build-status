require 'sinatra'
require 'open-uri'

get '/' do
  content_type 'text/html'
  File.read('index.html')
end

get '/buildbox.js' do
  content_type 'text/javascript'
  File.read('buildbox.js')
end

get '/stylesheet.css' do
  content_type 'text/css'
  File.read('stylesheet.css')
end

get '/feed.xml' do
  content_type 'text/xml'
  open("https://cc.buildbox.io/eliminate-dengue-project.xml?api_key=ca26edfdedcc6c772793b5f52fb6f358").read
end
