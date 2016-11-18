require "http/client"
require "json"

def send_sms(to, from, body)
  HTTP::Client.new("api.twilio.com", 443, true) do |client|
    client.basic_auth(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])
    response = client.post_form("/2010-04-01/Accounts/#{ENV["TWILIO_ACCOUNT_SID"]}/Messages.json",
     { "To" => to, "From" => from, "Body" => body})
    result = JSON.parse(response.body)
    if response.success?
      puts result # peek at the full result #result["sid"]
    else
      puts result["message"]
    end
  end
end

send_sms(ENV["MY_NUMBER"], ENV["MY_TWILIO_NUMBER"], "Hello from Crystal!")
