require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    t=Time.now.hour
    if t >=12
      resp.write "good Afternoon"
    else resp.write "good Morning"
    end
    resp.finish
  end
end
