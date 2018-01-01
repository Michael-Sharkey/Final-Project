# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movement.create(name: 'Push')
Movement.create(name: 'Pull')
Movement.create(name: 'Hip Extension')
Movement.create(name: 'Squat')
Movement.create(name: 'Core Stability')

Exercise.create(name: 'Overhead Press', movement_id: 1 )
Exercise.create(name: 'Bench Press', movement_id: 1 )
Exercise.create(name: 'Push Press', movement_id: 1 )
Exercise.create(name: 'Triceps Extension', movement_id: 1 )

Exercise.create(name: 'Chin Up', movement_id: 2 )
Exercise.create(name: 'Barbell Row', movement_id: 2 )
Exercise.create(name: 'Snatch Grip High Pull', movement_id: 2 )
Exercise.create(name: 'Barbell Curl', movement_id: 2 )

Exercise.create(name: 'Deadlift', movement_id: 3 )
Exercise.create(name: 'Power Clean', movement_id: 3 )
Exercise.create(name: 'Power Snatch', movement_id: 3 )
Exercise.create(name: 'Romanian Deadlift', movement_id: 3 )

Exercise.create(name: 'Power Squat', movement_id: 4 )
Exercise.create(name: 'Front Squat', movement_id: 4 )
Exercise.create(name: 'Olympic Squat', movement_id: 4 )
Exercise.create(name: 'Overhead Squat', movement_id: 4 )

Exercise.create(name: 'Sit Up', movement_id: 5 )
Exercise.create(name: 'Ab Wheel Rollout', movement_id: 5 )
Exercise.create(name: 'Paloff Press', movement_id: 5 )
Exercise.create(name: 'Pulldown Abs', movement_id: 5 )
