class Doctor

    @@all = []
    attr_reader :name
    
    def initialize(name)
        @name = name
    
    
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        self.appointments.map do |appointment|
            appointment.patient
        end
    end
    
    
    end