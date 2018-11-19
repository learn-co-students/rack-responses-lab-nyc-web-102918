class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.to_s.split[1]

    if time < '12:00:00'
      resp.write 'Good Morning!'
    else
      resp.write 'Good Afternoon!'
    end
    
    resp.finish
  end

end


# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!".
# Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
