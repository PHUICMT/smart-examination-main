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
--         "[{\"article\":1,\"type\":\"Radio\",\"data\":{\"title\":\"1. ขั้นตอนการพัฒนาอัลกอริทึมเพื่อแก้ปัญหา(Develops the algorithm for solution) หมายถึงข้อใด\",\"items\":[\"เอกสารประกอบโปรแกรมจะช่วยอธิบายถึงจุดประสงค์ของโปรแกรม\",\"อัลกอริทึมในที่นี้หมายถึงสูตรทางคณิตศาสตร์ที่ใช้สำหรับในการแก้ปัญญา\",\"การวางแผนการเขียนโปรแกรม ด้วยการออกแบบให้มีเวลาการประมวลผล คือผังงาน(Flowchart)\"]}},{\"article\":2,\"type\":\"TextField\",\"data\":{\"title\":\"2. เขียนโค้ดที่แสดงถึง MVC\"}},{\"article\":3,\"type\":\"CheckBox\",\"data\":{\"title\":\"3. ข้อใดบ้างที่เกี่ยวของกับ React\",\"items\":[\"Fontend\",\"Library\",\"Client\"]}}]",
--         "2562"
--     )
