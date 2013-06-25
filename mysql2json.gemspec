Gem::Specification.new do |s|
  s.name        = 'mysql2json'
  s.version     = '0.0.3'
  s.date        = '2013-06-25'
  s.summary     = "A simple script to convert mysql data into json"
  s.description = "Convert mysql data into json"
  s.authors     = ["Jared Wright"]
  s.email       = 'jawerty210@gmail.com'
  s.files       = ["lib/mysql2json.rb"]
  s.homepage    = 'http://rubygems.org/gems/mysql2json'
  s.licenses    = ['MIT']
  s.add_dependency 'mysql2', '~> 0.3.11'
  s.add_dependency 'json', '~> 1.7.7'
end
