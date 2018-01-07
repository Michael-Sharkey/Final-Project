# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movement.create(pattern: 'Push')
Movement.create(pattern: 'Pull')
Movement.create(pattern: 'Squat')
Movement.create(pattern: 'Hip Extension')
Movement.create(pattern: 'Core Stability')

Exercise.create(movement_id: '1', name: 'Overhead Press')
Exercise.create(movement_id: '1', name: 'Bench Press')
Exercise.create(movement_id: '1', name: 'Push Press')
Exercise.create(movement_id: '1', name: 'Triceps Extension')

Exercise.create(movement_id: '2', name: 'Chin Up')
Exercise.create(movement_id: '2', name: 'Barbell Row')
Exercise.create(movement_id: '2', name: 'Snatch Grip High Pull')
Exercise.create(movement_id: '2', name: 'Barbell Curl')

Exercise.create(movement_id: '3', name: 'Low Bar Squat')
Exercise.create(movement_id: '3', name: 'Front Squat')
Exercise.create(movement_id: '3', name: 'High Bar Squat')
Exercise.create(movement_id: '3', name: 'Overhead Squat')

Exercise.create(movement_id: '4', name: 'Deadlift')
Exercise.create(movement_id: '4', name: 'Power Clean')
Exercise.create(movement_id: '4', name: 'Power Snatch')
Exercise.create(movement_id: '4', name: 'Romanian Deadlift')

Exercise.create(movement_id: '5', name: 'Sit Up')
Exercise.create(movement_id: '5', name: 'Ab Wheel Rollout')
Exercise.create(movement_id: '5', name: 'Paloff Press')
Exercise.create(movement_id: '5', name: 'Pulldown Abs')
