class PerformanceMailer < ActionMailer::Base
  default from: "ashokkumar@shriramits.com"
  
  def performance_confirmation(user)
    @performance=user
    attachments["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(:to => user.employee.eamil, :subject => "Registered") 
  end
  def send_new(user)
    @performance=user
    attachments["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(:to =>"ashokkumar@shriramits.com", :subject => "Registered") 
  end
end
