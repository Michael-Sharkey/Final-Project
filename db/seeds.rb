# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MovementPattern.create(name: 'Press')
MovementPattern.create(name: 'Pull')
MovementPattern.create(name: 'Hip Extension')
MovementPattern.create(name: 'Squat')
MovementPattern.create(name: 'Calisthenics')

Exercise.create(name: 'Overhead Press', movement_pattern_id: 1 )
Exercise.create(name: 'Bench Press', movement_pattern_id: 1 )
Exercise.create(name: 'Chin Up', movement_pattern_id: 2 )
Exercise.create(name: 'Barbell Row', movement_pattern_id: 2 )
Exercise.create(name: 'Deadlift', movement_pattern_id: 3 )
Exercise.create(name: 'Power Clean', movement_pattern_id: 3 )
Exercise.create(name: 'Back Squat', movement_pattern_id: 4 )
Exercise.create(name: 'Front Squat', movement_pattern_id: 4 )
Exercise.create(name: 'Sit Up', movement_pattern_id: 5 )
Exercise.create(name: 'Push Up', movement_pattern_id: 5 )
