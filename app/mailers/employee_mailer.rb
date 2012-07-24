class EmployeeMailer < ActionMailer::Base
  default from: "from@example.com"
  def employee_creation(user)
    @employee=user
    attachments["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(:to => user.eamil, :subject => "Registered") 
  end
end
