Gem::Specification.new do |s|
  s.name        = "dpla"
  s.version     = '3.1.0.0.pre.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tom Johnson"]
  s.homepage    = 'https://github.com/dpla/dpla_map'
  s.email       = 'tom@dp.la'
  s.summary     = %q{DPLA's metadata application profile in ActiveTriples.}
  s.description = %q{DPLA's metadata application profile in ActiveTriples.}
  s.required_ruby_version     = '>= 1.9.3'

  s.add_dependency('active-triples')
  s.add_dependency('linked_vocabs')

  s.add_development_dependency('pry')
  s.add_development_dependency('rspec')
  s.add_development_dependency('factory_girl', '~> 4.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ['lib', 'lib/rdf']
end
