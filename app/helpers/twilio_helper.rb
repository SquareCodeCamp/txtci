module TwilioHelper


    # sample message: 
    # #child 1 #center 1 #message got goods #health

    def parseText(message)
        child = "0"
        center = "0"
        message = "none"

        message.split("#").each do |token|
            if token.length > 0
                if token.split[0] == "child"

                    child = token.split[1]
                    puts "child" + token.split[1]
                elsif token.split[0] == "center"
                    center = token.split[1]
                    puts "center" + token.split[1]
                elsif token.split[0] == "message"
                    message = token.split("message")[1]
                    puts "message" + message
                end    
            end
        end
        message_params = { "text"=>message, 
                          "child"=>child,
                          "center"=>center
        }
        # @message = Message.new(message_params)
    end
end