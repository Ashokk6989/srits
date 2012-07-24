class PerformanceMailer < ActionMailer::Base
  default from: "ashokkumar@shriramits.com"
  
  def send_admin(user)
    @performance=user
    attachments["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(:to => "arunkumar.t@shriramits.com", :subject => "Registered") 
  end
end
