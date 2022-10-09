# frozen_string_literal: true

require 'rack'

# Description/Explanation of Router class
class Router
  def call(env)
    request = Rack::Request.new(env)
    case request.path
    when '/'
      [200, {}, ['Hello, World!']]
    when '/about'
      [200, {}, ['About page']]
    else
      [404, {}, ['404 Not Found']]
    end
  end
end
