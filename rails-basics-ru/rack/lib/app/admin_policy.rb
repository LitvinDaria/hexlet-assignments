# frozen_string_literal: true

# Description/Explanation of AdminPolicy class
class AdminPolicy
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    request = Rack::Request.new(env)
    return [403, {}, []] if request.path.start_with? '/admin'

    [status, headers, body]
  end
end
