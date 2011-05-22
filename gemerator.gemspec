Gem::Specification.new do |s|
  s.name        = "gemerator"
  s.version     = "0.1.0"
  s.description = "Like NewGem, but way simpler."
  s.homepage    = "http://github.com/rkh/gemerator"
  s.authors     = %w[Konstantin Haase]
  s.email       = %w[konstantin.mailinglists@googlemail.com]
  s.files       = %w[Readme.md gemerator.gemspec bin/gemerate]
  s.summary     = <<-SUMMARY
    Like NewGem, but way simpler, leaves no traces, extremely minimal boiler
    plate. Automatically handles extensions for Rack, Yard, Sinatra, etc
    correctly.
  SUMMARY
end