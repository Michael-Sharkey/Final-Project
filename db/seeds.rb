# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Movement.find_or_create_by(pattern: 'Push')
Movement.find_or_create_by(pattern: 'Pull')
Movement.find_or_create_by(pattern: 'Squat')
Movement.find_or_create_by(pattern: 'Hip Extension')
Movement.find_or_create_by(pattern: 'Core Stability')

Exercise.find_or_create_by(movement_id: '1', name: 'Overhead Press')
Exercise.find_or_create_by(movement_id: '1', name: 'Bench Press')
Exercise.find_or_create_by(movement_id: '1', name: 'Push Press')
Exercise.find_or_create_by(movement_id: '1', name: 'Triceps Extension')

Exercise.find_or_create_by(movement_id: '2', name: 'Chin Up')
Exercise.find_or_create_by(movement_id: '2', name: 'Barbell Row')
Exercise.find_or_create_by(movement_id: '2', name: 'Snatch Grip High Pull')
Exercise.find_or_create_by(movement_id: '2', name: 'Barbell Curl')

Exercise.find_or_create_by(movement_id: '3', name: 'Low Bar Squat')
Exercise.find_or_create_by(movement_id: '3', name: 'Front Squat')
Exercise.find_or_create_by(movement_id: '3', name: 'High Bar Squat')
Exercise.find_or_create_by(movement_id: '3', name: 'Overhead Squat')

Exercise.find_or_create_by(movement_id: '4', name: 'Deadlift')
Exercise.find_or_create_by(movement_id: '4', name: 'Power Clean')
Exercise.find_or_create_by(movement_id: '4', name: 'Power Snatch')
Exercise.find_or_create_by(movement_id: '4', name: 'Romanian Deadlift')

Exercise.find_or_create_by(movement_id: '5', name: 'Sit Up')
Exercise.find_or_create_by(movement_id: '5', name: 'Ab Wheel Rollout')
Exercise.find_or_create_by(movement_id: '5', name: 'Paloff Press')
Exercise.find_or_create_by(movement_id: '5', name: 'Pulldown Abs')
