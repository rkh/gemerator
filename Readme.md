Like NewGem, but way simpler, leaves no traces, extremely minimal boiler plate.
Automatically handles extensions for Rack, Yard, Sinatra, etc correctly.

Inspired by [Steve Klabnik](http://steveklabnik.com/)'s
[Making Ruby Gems](http://timelessrepo.com/making-ruby-gems).

Only point where it is opinionated: It sets up RSpec. But all you have to do if
you don't like that, is changing a single line in the generated Rakefile.

Feel free to [contribute](http://github.com/rkh/gemerator).

# Usage

    gemerate GEM_NAME

Simpe example:

    $ gemerate foo
    ...
    $ tree foo
    foo
    ├── Gemfile
    ├── License
    ├── README.md
    ├── Rakefile
    ├── foo.gemspec
    ├── lib
    │   ├── foo
    │   │   └── version.rb
    │   └── foo.rb
    └── spec
        └── foo_spec.rb

    3 directories, 8 files

For an extension:

    $ gemerate rack-foo
    ...
    $ tree rack-foo/
    rack-foo/
    ├── Gemfile
    ├── License
    ├── README.md
    ├── Rakefile
    ├── lib
    │   ├── rack
    │   │   ├── foo
    │   │   │   └── version.rb
    │   │   └── foo.rb
    │   └── rack-foo.rb
    ├── rack-foo.gemspec
    └── spec
        └── rack_foo_spec.rb

    4 directories, 9 files

Per default, `rack-foo.gemspec` will automatically depend on `rack` and
`lib/rack/foo.rb` will require `rack`.

# Why not `bundle gem`?

`bundle gem` is fine, but just too little boilerplate, here is what is
different:

* A `rake test` is ready to go.
* The gemspec does not include shell-outs, file list is not generic (this is a
  feature!)
* Less TODOs all over the place you have to remove
* No rubbish in the `.gitignore`
* Includes rake task to update files/authors/e-mails from git and version from
  lib (similar to what Sinatra/Tilt/sinatra-contrib and so on do)
* Internally, the version is not a string to avoid alphanumerical comparison
  (similar to what Rails does)
* You can do `QUICK=1 bundle install` to avoid fetching from RubyForge

Apart from that, it's pretty much the same. Oh, wait, and it works without
bundler.

# Installation

    gem install gemerator
