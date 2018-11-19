class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    afternoon = time.hour >= 12


    if afternoon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
