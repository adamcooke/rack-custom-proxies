Gem::Specification.new do |s|
  s.name          = "rack-custom-proxies"
  s.description   = %q{Allow easier configuration of the trusted proxies list}
  s.summary       = s.description
  s.homepage      = "https://github.com/adamcooke/rack-custom-proxies"
  s.version       = '1.0.0'
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
  s.licenses      = ['MIT']
  s.add_runtime_dependency("rack")
end
