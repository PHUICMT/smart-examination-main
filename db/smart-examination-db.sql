USE `smart_examination`;

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
  `events` json
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

-- INSERT INTO
--     `Users` (
--         `user_id`,
--         `name`,
--         `surname`,
--         `start_at`,
--         `is_student`
--     )
-- VALUES
--     ("07610497", "Undaman", "Nopnapaporn", "2561", 1),
--     ("07610400", "Undaman2", "Nopnapaporn2", "2562", 1),
--     ("11111111", "Teacher", "Test", "2500", 0)

-- INSERT INTO
--     `Subject` (`subject_id`, `name`)
-- VALUES
--     ("Computer", "Computer Programing II")

-- INSERT INTO
--     `Examination` (
--         `exam_pin`,
--         `exam_name`,
--         `teacher_id`,
--         `items_count`,
--         `score`,
--         `exam`,
--         `created_at`
--     )
-- VALUES
--     (
--         "ABC1234",
--         "Computer Programing II",
--         "11111111",
--         10,
--         10.0,
--         "[]",
--         "2562"
--     )
