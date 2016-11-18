# Sending SMS with Crystal

1. You will need to have an account at Twilio. Sign up for a free account at https://www.twilio.com/try-twilio
2. For convenience, I am using RVM (Ruby Version Manager) to easily load environment variables when I enter the project directory.
Feel free to load the environment variables by other means though. If using the RVM approach, copy `ruby-env.sample` to `ruby-env` and put in your Twilio creds and phone number.
3. Run with `crystal sms.cr` or build the executable with `crystal build sms.cr` 
