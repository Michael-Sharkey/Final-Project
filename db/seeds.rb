# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Push.create(exercise: 'Overhead Press')
Push.create(exercise: 'Bench Press')
Push.create(exercise: 'Push Press')
Push.create(exercise: 'Triceps Extension')

Pull.create(exercise: 'Chin Up')
Pull.create(exercise: 'Barbell Row')
Pull.create(exercise: 'Snatch Grip High Pull')
Pull.create(exercise: 'Barbell Curl')

Hinge.create(exercise: 'Deadlift')
Hinge.create(exercise: 'Power Clean')
Hinge.create(exercise: 'Power Snatch')
Hinge.create(exercise: 'Romanian Deadlift')

Squat.create(exercise: 'Low Bar Squat')
Squat.create(exercise: 'Front Squat')
Squat.create(exercise: 'High Bar Squat')
Squat.create(exercise: 'Overhead Squat')

Core.create(exercise: 'Sit Up')
Core.create(exercise: 'Ab Wheel Rollout')
Core.create(exercise: 'Paloff Press')
Core.create(exercise: 'Pulldown Abs')
