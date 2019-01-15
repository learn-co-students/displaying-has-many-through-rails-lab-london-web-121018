class Patient < ActiveRecord::Base
  has_many :doctors
  has_many :appointments
  has_many :doctors, through: :appointments

  def appointments
    Appointment.all.where("patient_id = #{self.id}")
  end
end
