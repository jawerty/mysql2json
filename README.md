# mysql2json
Convert mysql data into json in one line of text

# Install
Install via rubygems
```
$ gem install mysql2json
```

# Usage
Basic usage
```
require "mysql2" 
require "mysql2json"

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "xxxxxx", :database => 'my_database')

result = Mysql2json.query_export("SELECT * FROM my_database", client)

puts results #This will output all of youe newly converted data
```

Export the data to a file
```
filename = 'data.json'
Mysql2json.query_export("SELECT * FROM my_database", client, filename)
#Your json will be in the file data.json
```

# Contact
If you would like to contact me for further information on the project, see the info below.

Email: jawerty210@gmail.com

Github: jawerty

Twitter: @jawerty

Website/Blog: <http://jawerty.github.io>

#LICENSE
This repository is under the MIT License

