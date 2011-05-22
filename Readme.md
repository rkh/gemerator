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

# Installation

    gem install gemerator
