# run with:  thin --rackup config.ru -p 4567 start

require 'app'

use Rack::Static, :urls => ["/stylesheets", "/javascripts"], :root => "public"

run Sinatra::Application
