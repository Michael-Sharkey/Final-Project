# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


Exercise.create(type: 'Push', name: 'Overhead Press')
Exercise.create(type: 'Push', name: 'Bench Press')
Exercise.create(type: 'Push', name: 'Push Press')
Exercise.create(type: 'Push', name: 'Triceps Extension')

Exercise.create(type: "Pull", name: 'Chin Up')
Exercise.create(type: "Pull", name: 'Barbell Row')
Exercise.create(type: "Pull", name: 'Snatch Grip High Pull')
Exercise.create(type: "Pull", name: 'Barbell Curl')

Exercise.create(type: "Squat", name: 'Low Bar Squat')
Exercise.create(type: "Squat", name: 'Front Squat')
Exercise.create(type: "Squat", name: 'High Bar Squat')
Exercise.create(type: "Squat", name: 'Overhead Squat')

Exercise.create(type: "Hinge", name: 'Deadlift')
Exercise.create(type: "Hinge", name: 'Power Clean')
Exercise.create(type: "Hinge", name: 'Power Snatch')
Exercise.create(type: "Hinge", name: 'Romanian Deadlift')

Exercise.create(type: "Core", name: 'Sit Up')
Exercise.create(type: "Core", name: 'Ab Wheel Rollout')
Exercise.create(type: "Core", name: 'Paloff Press')
Exercise.create(type: "Core", name: 'Pulldown Abs')
