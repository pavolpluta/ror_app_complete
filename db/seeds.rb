Building.create!([
  {title: "Czech Centre 1", code: "CZE"},
  {title: "Slovakia Centre", code: "EBC_SVK"},
  {title: "Sweden Centre", code: "EBC_SWE"},
  {title: "France Centre", code: "EBC_FR"}
])
Course.create!([
  {title: "História", code: "HIS", language: "czech", study_type: "full_time"},
  {title: "Java", code: "JSE_CZ", language: "czech", study_type: "full_time"},
  {title: "Kreslenie", code: "KRE", language: "czech", study_type: "full_time"},
  {title: "Webový Frontend", code: "WFE", language: "czech", study_type: "full_time"},
  {title: "SQL Databases", code: "SQL", language: "english", study_type: "full_time"},
  {title: "Futbal", code: "FUT", language: "czech", study_type: "part_time"},
  {title: "Varenie", code: "VRE", language: "czech", study_type: "part_time"},
  {title: "Java", code: "JSE", language: "english", study_type: "part_time"}
])
Lesson.create!([
  {start_at: "2017-06-06 11:25:00", end_at: "2017-06-06 13:00:00", duration: 95, room_id: 23, teacher_id: 2, course_id: 15},
  {start_at: "2017-12-04 09:00:00", end_at: "2017-12-04 10:35:00", duration: 95, room_id: 4, teacher_id: 1, course_id: 17},
  {start_at: "2017-12-04 13:00:00", end_at: "2017-12-04 16:00:00", duration: 180, room_id: 4, teacher_id: 2, course_id: 3},
  {start_at: "2017-12-05 07:00:00", end_at: "2017-12-05 08:00:00", duration: 60, room_id: 1, teacher_id: 4, course_id: 14},
  {start_at: "2017-12-05 08:30:00", end_at: "2017-12-05 08:45:00", duration: 15, room_id: 23, teacher_id: 4, course_id: 14},
  {start_at: "2017-12-05 11:00:00", end_at: "2017-12-05 13:00:00", duration: 120, room_id: 4, teacher_id: 2, course_id: 3},
  {start_at: "2017-12-05 14:00:00", end_at: "2017-12-05 15:00:00", duration: 60, room_id: 4, teacher_id: 14, course_id: 14},
  {start_at: "2017-12-05 15:15:00", end_at: "2017-12-05 16:45:00", duration: 90, room_id: 4, teacher_id: 13, course_id: 2},
  {start_at: "2017-12-06 05:00:00", end_at: "2017-12-06 06:20:00", duration: 80, room_id: 1, teacher_id: 4, course_id: 2},
  {start_at: "2017-12-06 10:00:00", end_at: "2017-12-06 11:45:00", duration: 105, room_id: 12, teacher_id: 6, course_id: 17},
  {start_at: "2017-12-06 11:00:00", end_at: "2017-12-06 12:00:00", duration: 60, room_id: 4, teacher_id: 4, course_id: 14},
  {start_at: "2017-12-06 20:00:00", end_at: "2017-12-06 21:00:00", duration: 60, room_id: 22, teacher_id: 6, course_id: 16},
  {start_at: "2017-12-06 22:00:00", end_at: "2017-12-06 22:45:00", duration: 45, room_id: 1, teacher_id: 2, course_id: 15},
  {start_at: "2017-12-07 20:00:00", end_at: "2017-12-07 22:00:00", duration: 120, room_id: 22, teacher_id: 6, course_id: 16},
  {start_at: "2017-12-08 15:00:00", end_at: "2017-12-08 17:00:00", duration: 120, room_id: 4, teacher_id: 6, course_id: 18},
  {start_at: "2017-12-10 17:00:00", end_at: "2017-12-10 19:00:00", duration: 120, room_id: 4, teacher_id: 1, course_id: 1},
  {start_at: "2017-12-12 09:45:00", end_at: "2017-12-12 11:45:00", duration: 120, room_id: 12, teacher_id: 3, course_id: 15}
])
Room.create!([
  {title: "Czech Room 1", code: "CZE 1.1", building_id: 2},
  {title: "CZE Room 2", code: "CZE 1.2", building_id: 2},
  {title: "Great room", code: "GOOD", building_id: 3},
  {title: "SWE Room 1", code: "SWE 1.1", building_id: 4},
  {title: "French Room 1", code: "FR 1.1", building_id: 6}
])
Student.create!([
  {first_name: "Frodo", last_name: "Baggins", email: "frodo@lotr.com", study_type: "full_time"},
  {first_name: "David", last_name: "Goliaš", email: "d@g.com", study_type: "full_time"},
  {first_name: "Harry", last_name: "Potter", email: "harry@hogwarts.com", study_type: "full_time"},
  {first_name: "Ron", last_name: "Weasley", email: "ron@hogwarts.com", study_type: "full_time"},
  {first_name: "Azamat", last_name: "Zabrat", email: "a@z.com", study_type: "full_time"},
  {first_name: "Kamil", last_name: "Goliáš", email: "kamil@brony.com", study_type: "part_time"},
  {first_name: "Ragnar", last_name: "Lothbrok", email: "ragnar@loth.com", study_type: "part_time"},
  {first_name: "Lord", last_name: "Nelson", email: "nelson@lord.com", study_type: "part_time"}
])
StudentAssignment.create!([
  {student_id: 1, course_id: 1},
  {student_id: 2, course_id: 2},
  {student_id: 3, course_id: 1},
  {student_id: 3, course_id: 2},
  {student_id: 10, course_id: 1},
  {student_id: 10, course_id: 2},
  {student_id: 8, course_id: 15},
  {student_id: 8, course_id: 3},
  {student_id: 13, course_id: 2},
  {student_id: 9, course_id: 15},
  {student_id: 9, course_id: 16},
  {student_id: 14, course_id: 16},
  {student_id: 14, course_id: 17},
  {student_id: 13, course_id: 14},
  {student_id: 13, course_id: 1},
  {student_id: 6, course_id: 14},
  {student_id: 6, course_id: 2},
  {student_id: 6, course_id: 1},
  {student_id: 14, course_id: 18},
  {student_id: 12, course_id: 18},
  {student_id: 12, course_id: 15},
  {student_id: 12, course_id: 16},
  {student_id: 7, course_id: 18},
  {student_id: 7, course_id: 3},
  {student_id: 7, course_id: 17}
])
Teacher.create!([
  {first_name: "Jan", last_name: "Adam", email: "adam@example.com"},
  {first_name: "Bilbo", last_name: "Baggins", email: "bilbo@lotr.com"},
  {first_name: "Jana", last_name: "Kranová", email: "j.kran@gmail.com"},
  {first_name: "Andrej", last_name: "Kraus", email: "andy@kraus.sk"},
  {first_name: "Adolf", last_name: "Lombar", email: "adolf@lom.com"},
  {first_name: "Božena", last_name: "Němcová", email: "bozka@gmail.com"},
  {first_name: "Roman", last_name: "Športový", email: "r.sport@azet.sk"}
])
TeacherAssignment.create!([
  {teacher_id: 1, course_id: 1},
  {teacher_id: 1, course_id: 2},
  {teacher_id: 3, course_id: 15},
  {teacher_id: 3, course_id: 16},
  {teacher_id: 4, course_id: 14},
  {teacher_id: 4, course_id: 2},
  {teacher_id: 2, course_id: 15},
  {teacher_id: 2, course_id: 3},
  {teacher_id: 1, course_id: 17},
  {teacher_id: 6, course_id: 16},
  {teacher_id: 6, course_id: 17},
  {teacher_id: 13, course_id: 15},
  {teacher_id: 13, course_id: 3},
  {teacher_id: 13, course_id: 2},
  {teacher_id: 14, course_id: 14},
  {teacher_id: 6, course_id: 18}
])
