class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
  def self.all_and_then_some
    appointments = Appointment.all
    appointments.map do | appointment |
      { id: appointment.id, time: appointment.time, physician: appointment.physician, patient: appointment.patient}
    end
  end
end
