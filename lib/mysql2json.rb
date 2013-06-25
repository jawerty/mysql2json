require 'mysql2'
require 'json'

def is_json_valid(object)
  JSON.parse(object)  
  return true  
rescue JSON::ParserError  
  return false  
end  

def convert(results)
	non_json_data = []

	results = Array(results)

	results.each_index do |index|
		non_json_data.push(results[index]);
		index += 1
		puts 'row: '+index.to_s+' parsed'
	end

	non_json_data.each do |k,v|
		v.to_s
	end

	json_data = non_json_data.map { |o| Hash[o.each_pair.to_a] }.to_json

	if is_json_valid(json_data)
		json_data = json_data.to_s
	else
		json_data = 'ParserError: Could not parse to json, retry.'
	end

	return json_data
end

class Mysql2json 
	def self.query(q, client)
		results = client.query(q)
		return convert(results)
	end

	def self.query_export(q, client, filename)
		results = client.query(q)
		convert(results)
		file = File.open(filename, 'w')
		file.write(json_data)
		file.close()
		puts 'Data written to %s' % filename
	end

end



