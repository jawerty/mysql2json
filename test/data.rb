require 'sinatra'

get '/data.json' do
	<<-doc
	{"name":"Jared"}
	doc
end
