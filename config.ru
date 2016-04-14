
use Rack::Static,
  :urls => [
    "/index.html"
  ],
  :root => "."

run lambda { |env|
  [
    302,
    {
      'Location'  => '/index.html',
    },
    StringIO.new("")
  ]
}
