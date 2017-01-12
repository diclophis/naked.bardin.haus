# vintage handwritten html

use Rack::Static, {
  :urls => [
    "/index.html",
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
