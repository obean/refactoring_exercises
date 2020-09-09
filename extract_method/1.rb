def send_email_to(user)
  email = emailcleaner(user)
  mail  = Mail.new(email)
  
  mail.send_message
end

def email_cleaner(user)
  user.email.strip
end