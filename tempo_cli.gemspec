Gem::Specification.new do |s|
  s.name         = "tempo_cli"
  s.version      = "0.0.1"
  s.date         = "2008-07-29"
  s.summary      = "CLI for starting and stopping time using the Tempo time tracker."
  s.email        = "james@giraffesoft.ca"
  s.homepage     = "http://keeptempoapp.com"
  s.description  = ""
  s.has_rdoc     = false
  s.require_path = "lib"
  s.bindir       = "bin"
  s.executables  = %w(tempo)
  s.authors      = ["James Golick"]
  s.files        = ["lib/tempo_cli.rb", "bin/tempo", "README.rdoc", "LICENSE", "test/test_helper.rb"]
  s.add_dependency  'adamwiggins-rest-client'
end
