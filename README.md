# Sending SMS with Crystal

1. You will need to have an account at Twilio. Sign up for a free account at https://www.twilio.com/try-twilio
2. For convenience, I am using RVM (Ruby Version Manager) to easily load environment variables when I enter the project directory.
Feel free to load the environment variables by other means though.
 If using the RVM approach, copy `.ruby-env.sample` to `.ruby-env` and put in your Twilio creds and phone number.
3. Run with `crystal sms.cr` or build the executable with `crystal build --release sms.cr` and run with `./sms`
4. If run without arguments TO_PHONE is set to the environment variable TO_PHONE,
  and message is set to an internal default.
5. To quickly send a message to a phone number (this requires `crystal build` from above) run for example:

```
`./sms 8171234567 "Waas Up?"`  
```
