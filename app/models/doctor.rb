class Doctor < ActiveRecord::Base
    has_many :appointments
    has_many :patients, through: :appointments

    def self.patient_count
    end
end