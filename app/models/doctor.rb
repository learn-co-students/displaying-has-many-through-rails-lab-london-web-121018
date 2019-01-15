class Doctor < ActiveRecord::Base
  has_many :patients
  has_many :appointments
  has_many :patients, through: :appointments

  def appointments
    appointments = Appointment.all.where("doctor_id = #{self.id}")
  end
end

