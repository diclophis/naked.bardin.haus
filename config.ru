# vintage handwritten html, served up staticly

require 'rubygems'

Bundler.require

#require 'bespoked'
#require 'bespoked/rack_handler'

use Rack::Static, {
  :urls => [
    "/index.html",
    "/scroll-x.html",
    "/favicon.ico"
  ],
  :root => "public"
}

run lambda { |env|
  [
    302,
    {
      'Location'  => '/index.html',
    },
    StringIO.new("")
  ]
}
