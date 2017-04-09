class Vacation < ApplicationRecord
	validates_presence_of :worker_email
	validates_presence_of :start_date
	validates_presence_of :end_date
	
	validate :duration_of_vacation
	#validate :no_of_vacations

	def duration_of_vacation
		if ((end_date - start_date) > 30)
			errors.add(:vacation, "Should be less than 30 days")
			return
		end
	end	
end
