
use Rack::Static,
  :urls => [
    "/index.html",
    "/scroll-x.html"
  ],
  :root => "public"

run lambda { |env|
  [
    302,
    {
      'Location'  => '/index.html',
    },
    StringIO.new("")
  ]
}
