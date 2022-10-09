# frozen_string_literal: true

# require 'rack'
require 'rack'
# require 'thin'

class MyApp
  def call(env)
    [200, {'Content-Type' => 'text/html'}, ["Hello"]]
  end
end
Rack::Handler::Thin.run MyApp.new
# ruby app.rb 
