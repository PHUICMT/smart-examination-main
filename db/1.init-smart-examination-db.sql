USE `smart_examination`;
SET NAMES `utf8`;
CREATE TABLE `Users` (
  `user_id` varchar(255) PRIMARY KEY,
  `name` varchar(255),
  `surname` varchar(255),
  `start_at` varchar(255),
  `is_student` integer
);

CREATE TABLE `Subject` (
  `subject_id` varchar(255) PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Videos` (
  `id` varchar(255),
  `file_name` varchar(255),
  `student_id` varchar(255),
  `subject_id` varchar(255),
  `exam_pin` varchar(255),
  `created_at` varchar(255),
  PRIMARY KEY (`id`, `file_name`)
);

CREATE TABLE `Results` (
  `id` varchar(255) PRIMARY KEY,
  `student_id` varchar(255),
  `exam_pin` varchar(255),
  `total_score` integer,
  `emotion` json,
  `answer` json,
  `start_and_end_time` json,
  `exam_items_time_stamp` json
);

CREATE TABLE `Examination` (
  `exam_pin` varchar(255) PRIMARY KEY,
  `exam_name` varchar(255),
  `teacher_id` varchar(255),
  `items_count` integer,
  `score` float,
  `exam` json,
  `created_at` varchar(255)
);
  

ALTER TABLE `Videos` ADD FOREIGN KEY (`student_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `Videos` ADD FOREIGN KEY (`subject_id`) REFERENCES `Subject` (`subject_id`);

ALTER TABLE `Videos` ADD FOREIGN KEY (`exam_pin`) REFERENCES `Examination` (`exam_pin`);

ALTER TABLE `Results` ADD FOREIGN KEY (`student_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `Results` ADD FOREIGN KEY (`exam_pin`) REFERENCES `Examination` (`exam_pin`);

ALTER TABLE `Examination` ADD FOREIGN KEY (`teacher_id`) REFERENCES `Users` (`user_id`);



[[Sad : 20%
normal : 10%
Angry : 70%],

[Sad : 20%
normal : 10%
Angry : 70%],

[Sad : 20%
normal : 10%
Angry : 70%],

[Sad : 20%
normal : 10%
Angry : 70%]]


ภู 
Sad : 20%
normal : 10%
Angry : 70%


กร
Sad : 5%
normal : 15%
Angry : 70%