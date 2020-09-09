class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = create_mail_server
    mail_server.send_message({ to: @email, body: build_message })
  end

  def create_mail_server(url="http://mixmax.com", api_key="f20506xx808c")
    MailServer.connect(url, api_key: api_key)
  end

  def build_message
    base_body = "Welcome to MyProduct"
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end