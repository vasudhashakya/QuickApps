class Vacation < ApplicationRecord

	
	#belongs_to :worker
	#belongs_to :user

	#validates :end_date, :presence => true
	#validates :worker_email, :presence => true
	
	validate :duration_of_vacation

	def duration_of_vacation
		if ((end_date - start_date) > 30)
			errors.add(:vacation, "Should be less than 30 days")
			return
		end
	end
end
