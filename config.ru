# vintage handwritten html, served up staticly

require 'rubygems'

Bundler.require

use Rack::Static, { :urls => [""], :root => 'public', :index => 'index.html' }

run lambda { |env|
  [
    302,
    {
      'Location'  => '/index.html',
    },
    StringIO.new("")
  ]
}
