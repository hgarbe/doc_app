class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def new
    @doctors = Doctor.all - @patient.doctors
    @appointment = @patient.appointments.new
  end
end
