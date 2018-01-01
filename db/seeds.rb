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

HipExtension.create(exercise: 'Deadlift')
HipExtension.create(exercise: 'Power Clean')
HipExtension.create(exercise: 'Power Snatch')
HipExtension.create(exercise: 'Romanian Deadlift')

Squat.create(exercise: 'Low Bar Squat')
Squat.create(exercise: 'Front Squat')
Squat.create(exercise: 'High Bar Squat')
Squat.create(exercise: 'Overhead Squat')

CoreStability.create(exercise: 'Sit Up')
CoreStability.create(exercise: 'Ab Wheel Rollout')
CoreStability.create(exercise: 'Paloff Press')
CoreStability.create(exercise: 'Pulldown Abs')
