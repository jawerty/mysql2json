require '../lib/mysql2json'
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "xxxxxx", :database => 'database')
results = Mysql2json.query("SELECT * FROM database LIMIT 5", client)
puts results