class QuizResult < ApplicationRecord
    PASTTRAINING = [
        "Never piloted an aircraft before",
        "A few hours but never soloed",
        "I have time using flight simulators",
        "I've flown drones",
        "I'm working on a checkride"
    ]

    FLIGHTTRAINING = ['Airplane Pilot Training', 'Helicopter Pilot Training', 'Both']

    VISITTIME = ['7 AM to 10 AM', '10 AM to 1 PM', '1 PM to 4 PM', '4 PM to 7 PM']
    
end
