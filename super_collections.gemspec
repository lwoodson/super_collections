Gem::Specification.new do |s|
  s.name  = 'super_collections'
  s.version  = '0.0.1'
  s.date  = '2012-11-23'
  s.summary  = 'Extensions to ruby collection classes'
  s.description  = s.summary
  s.authors     = ['Lance Woodson']
  s.email  = 'lance@webmaneuvers.com'
  s.files  = [
               "lib/super_collections.rb",
               "lib/super_collections/array.rb"
             ] 
  s.homepage  = 'https://github.com/lwoodson/super_collections/'

  s.add_development_dependency 'rspec'
end
