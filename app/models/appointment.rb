class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time
    self.appointment_datetime.strftime("%B %e, %Y at %R")
  end

  def doc_name
    self.doctor.name
  end
end
