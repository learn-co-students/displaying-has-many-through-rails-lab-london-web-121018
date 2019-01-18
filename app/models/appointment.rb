class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def date_time
        date = self.appointment_datetime
        date.strftime('%B %e, %Y at %k:%M')
    end
end
