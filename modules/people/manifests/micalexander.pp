class people::micalexander {

  # homebrew::tap { 'caskroom/versions': }
  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'homebrew/homebrew-php': }

  # pass the global php version to use
  class { 'projects::nginx-default':
    phpversion => '5.5.26'
  }

  include projects::all
  include people::micalexander::git

  sublime_text::package { 'Package Syncing':
    source => 'csch0/SublimeText-Package-Syncing'
  }

  ruby_gem { 'bundler for 2.2.2':
    gem          => 'bundler',
    version      => '~> 1.10',
    ruby_version => '2.2.2',
  }

  nodejs::module { 'bower':
    node_version => 'v0.10.31'
  }

  class { 'osx::dock::icon_size':
    size => 50
  }

  class { 'osx::mouse::smart_zoom':
    enabled => true
  }

  osx::recovery_message { 'If this Mac is found, please call +1.623.204.5592': }
}