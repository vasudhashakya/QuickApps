# Preview all emails at http://localhost:3000/rails/mailers/vacation_mailer
class VacationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vacation_mailer/new_vacation
  def new_vacation
  	vacation=Vacation.last
    VacationMailer.new_vacation(vacation)
  end

end
