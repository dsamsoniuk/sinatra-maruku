# Extension providing Maruku templates for Sinatra apps

The gem provides a request-helper method named `maruku`
for rendering Maruku templates.

A few links:

* [Maruku features](http://maruku.rubyforge.org/maruku.html)
* [Literate Maruku](http://www.slideshare.net/schmidt/literate-maruku)

Testing Rack apps:

* Bryan Helmkamp, [Rack::Test released: Simply test any Rack-compatible 
  app](http://www.brynary.com/2009/3/5/rack-test-released-a-simple-testing-api-for-rack-based-frameworks-and-apps)
* [rack-test](http://github.com/brynary/rack-test/)

To use this extension, first install the *sinatra-maruku* gem:

    git clone git://github.com/wbzyl/sinatra-maruku.git
    cd sinatra-maruku
    gem build sinatra-maruku
    sudo gem install sinatra-maruku

Then create a simple Sinatra application *app.rb*:

    require 'rubygems'
    require 'sinatra'
    require 'sinatra/maruku'
    
    get "/" do
      maruku "# Hello Maruku"
    end

and run the above code:

    ruby app.rb

The result could be seen here: *http://localhost:4567*.

Another example could be find in the *examples* directory.   
Run it with:

    rackup -p 4567 config.ru

Now, visit the following url *http://localhost:4567/hello*
and contemplate the sheer beauty of the rendered code.


## Template Languages (*update to The Sinatra Book*) 

### Maruku Templates

This helper method:

    get '/' do
      maruku :index
    end

renders template *./views/index.maruku*.

If a layout named *layout.maruku* exists, it will be used each time
a template is rendered.

You can disable layouts by passing `:layout => false` 
to *maruku* helper. For example

    get '/' do
      maruku :index, :layout => false
    end

You can set a different layout from the default one with:

    get '/' do
      maruku :index, :layout => :application
    end

This renders *./views/index.maruku* template
within *./views/application.maruku* layout.


## Sample layout for maruku templates

    CSS: /stylesheets/application.css /stylesheets/print.css
    Lang: pl
    Title: Hello Maruku 
    LaTeX preamble: preamble.tex
    
    # Hello Maruku  {.header}
    
    <%= yield %>
