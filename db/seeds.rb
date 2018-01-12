# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

5.times { Workout.create(user_id: 1) }
5.times { Workout.create(user_id: 2) }

2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "135", reps: 7, intensity: 3) }
2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "95", reps: 7, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Pull", name: "Pull Up", weight: "25", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 2, pattern: "Pull", name: "Pull Up", weight: "25", reps: 7, intensity: 4) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "295", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "315", reps: 9, intensity: 4) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "385", reps: 7, intensity: 3) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "365", reps: 5, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 17, intensity: 3) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 15, intensity: 3) }

2.times { Exercise.create(workout_id: 5, pattern: "Push", name: "Bench Press", weight: "225", reps: 6, intensity: 3) }
2.times { Exercise.create(workout_id: 7, pattern: "Push", name: "Bench Press", weight: "245", reps: 5, intensity: 4) }
2.times { Exercise.create(workout_id: 8, pattern: "Pull", name: "Barbell Row", weight: "275", reps: 6, intensity: 3) }
2.times { Exercise.create(workout_id: 9, pattern: "Pull", name: "Barbell Row", weight: "185", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 10, pattern: "Squat", name: "Olympic Squat", weight: "275", reps: 6, intensity: 3) }
2.times { Exercise.create(workout_id: 6, pattern: "Squat", name: "Olympic Squat", weight: "305", reps: 9, intensity: 4) }
2.times { Exercise.create(workout_id: 7, pattern: "Hinge", name: "Power Clean", weight: "205", reps: 6, intensity: 3) }
2.times { Exercise.create(workout_id: 8, pattern: "Hinge", name: "Power Clean", weight: "245", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 9, pattern: "Core", name: "Situp", weight: "50", reps: 15, intensity: 3) }
2.times { Exercise.create(workout_id: 10, pattern: "Core", name: "Situp", weight: "50", reps: 15, intensity: 3) }

2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "135", reps: 6, intensity: 3) }
2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "185", reps: 2, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Pull", name: "Pull Up", weight: "25", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 2, pattern: "Pull", name: "Pull Up", weight: "25", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "315", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "315", reps: 6, intensity: 4) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "345", reps: 56, intensity: 3) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "365", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 16, intensity: 3) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 15, intensity: 3) }

2.times { Exercise.create(workout_id: 6, pattern: "Push", name: "Bench Press", weight: "225", reps: 3, intensity: 3) }
2.times { Exercise.create(workout_id: 7, pattern: "Push", name: "Bench Press", weight: "205", reps: 5, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Pull", name: "Barbell Row", weight: "155", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 9, pattern: "Pull", name: "Barbell Row", weight: "185", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 10, pattern: "Squat", name: "Olympic Squat", weight: "275", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 6, pattern: "Squat", name: "Olympic Squat", weight: "255", reps: 9, intensity: 4) }
2.times { Exercise.create(workout_id: 7, pattern: "Hinge", name: "Power Clean", weight: "205", reps: 5, intensity: 3) }
2.times { Exercise.create(workout_id: 8, pattern: "Hinge", name: "Power Clean", weight: "205", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Situp", weight: "50", reps: 15, intensity: 3) }
2.times { Exercise.create(workout_id: 10, pattern: "Core", name: "Situp", weight: "50", reps: 15, intensity: 3) }

2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "135", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 1, pattern: "Push", name: "Overhead Press", weight: "135", reps: 5, intensity: 4) }
2.times { Exercise.create(workout_id: 2, pattern: "Pull", name: "Pull Up", weight: "25", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 2, pattern: "Pull", name: "Pull Up", weight: "25", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "365", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 3, pattern: "Squat", name: "Power Squat", weight: "315", reps: 9, intensity: 4) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "405", reps: 5, intensity: 3) }
2.times { Exercise.create(workout_id: 4, pattern: "Hinge", name: "Deadlift", weight: "365", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 15, intensity: 3) }
2.times { Exercise.create(workout_id: 5, pattern: "Core", name: "Paloff Press", weight: "50", reps: 15, intensity: 3) }

2.times { Exercise.create(workout_id: 6, pattern: "Push", name: "Bench Press", weight: "225", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 5, pattern: "Push", name: "Bench Press", weight: "255", reps: 5, intensity: 4) }
2.times { Exercise.create(workout_id: 8, pattern: "Pull", name: "Barbell Row", weight: "205", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 9, pattern: "Pull", name: "Barbell Row", weight: "185", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 10, pattern: "Squat", name: "Olympic Squat", weight: "295", reps: 8, intensity: 3) }
2.times { Exercise.create(workout_id: 6, pattern: "Squat", name: "Olympic Squat", weight: "275", reps: 6, intensity: 4) }
2.times { Exercise.create(workout_id: 7, pattern: "Hinge", name: "Power Clean", weight: "185", reps: 5, intensity: 3) }
2.times { Exercise.create(workout_id: 8, pattern: "Hinge", name: "Power Clean", weight: "205", reps: 4, intensity: 4) }
2.times { Exercise.create(workout_id: 9, pattern: "Core", name: "Situp", weight: "100", reps: 15, intensity: 3) }
2.times { Exercise.create(workout_id: 10, pattern: "Core", name: "Situp", weight: "50", reps: 13, intensity: 3) }
