USE `smart_examination`;
SET NAMES `utf8`;
INSERT INTO
    `Examination` (
        `exam_pin`,
        `exam_subject`,
        `exam_title`,
        `exam_description`,
        `teacher_id`,
        `items_count`,
        `score`,
        `exam`,
        `created_at`
    )
VALUES
    (
        "ABC1234",
        "Computer Programing II",
        "แบบทดสอบก่อนเรียน",
        "ชุดกิจกรรมการเรียนรู้ที่ 1 เรื่อง คอมพิวเตอร์ครอบจักรวาล",
        "11111111",
        10,
        10.0,
        "[{\"article\":1,\"type\":\"Radio\",\"data\":{\"title\":\"1. ขั้นตอนการพัฒนาอัลกอริทึมเพื่อแก้ปัญหา(Develops the algorithm for solution) หมายถึงข้อใด\",\"items\":[\"เอกสารประกอบโปรแกรมจะช่วยอธิบายถึงจุดประสงค์ของโปรแกรม\",\"อัลกอริทึมในที่นี้หมายถึงสูตรทางคณิตศาสตร์ที่ใช้สำหรับในการแก้ปัญญา\",\"การวางแผนการเขียนโปรแกรม ด้วยการออกแบบให้มีเวลาการประมวลผล คือผังงาน(Flowchart)\"]}},{\"article\":2,\"type\":\"TextField\",\"data\":{\"title\":\"2. เขียนโค้ดที่แสดงถึง MVC\"}},{\"article\":3,\"type\":\"CheckBox\",\"data\":{\"title\":\"3. ข้อใดบ้างที่เกี่ยวของกับ React\",\"items\":[\"Fontend\",\"Library\",\"Client\"]}}]",
        "06/04/2022"
    );
