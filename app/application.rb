
class Application
    
    def call(env)
        resp = Rack::Response.new

        if Time.now.hour.to_i < 12
            resp.write "Good Morning!\n"
        elsif Time.now.hour.to_i >= 12 
            resp.write "Good Afternoon!\n"
        end

        # resp.write "#{Time.now}\n"

        # resp.write "#{Time.now.to_i}\n"

        resp.finish
 end


end