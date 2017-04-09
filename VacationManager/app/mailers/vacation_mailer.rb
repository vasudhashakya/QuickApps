class VacationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vacation_mailer.new_vacation.subject
  #
  def new_vacation(vacation)
   @vacation = vacation

   # mail to manager(user) email
    mail to: "#{vacation.user_email}"
  end
end
