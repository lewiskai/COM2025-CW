class Contact < MailForm::Base
    attribute :Name,      validate: true
    attribute :Email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :Message
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        :subject => "Contact Form Inquiry",
        :to => "lewiskai0416@gmail.com",
        :from => %("#{name}" <#{email}>)
      }
    end
  end