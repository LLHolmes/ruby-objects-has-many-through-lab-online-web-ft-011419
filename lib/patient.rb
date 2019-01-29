class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self }
  end
  
  def patients
    appointments.collect { |app| app.patient }
  end
  
  def self.all
    @@all
  end
  
end