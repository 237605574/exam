-- SELECT count(*) FROM (SELECT count(*) FROM major_score_rank GROUP BY major_id,province,student_type ) as a
-- SELECT
-- 	*
-- FROM
-- 	major_info
-- WHERE
-- 	school_id = 1743 and province = "广东"

-- SELECT count(*) FROM major_info

-- SELECT *
-- FROM major_score_rank,school_major
-- WHERE school_major.school_id = 1743 and school_major.major_id = major_score_rank.major_id
-- and province = "广东" and `year` = 2016

-- 
-- SELECT
-- 	min(score)
-- FROM
-- 	onescore_2017
-- WHERE
-- 	rank < 6050
-- AND student_type = 0
-- AND province = "广东";
-- 
-- 


-- 
-- 
-- SELECT * FROM major_info WHERE max_score is not null;
-- 
-- SELECT * FROM onescore_2017 where province = "广东" and student_type=0

-- EXPLAIN UPDATE major_info m
-- SET m.max_score = (SELECT min(score) FROM onescore_2017 
-- WHERE  student_type = m.student_type
-- AND province = m.province
-- AND rank < m.max_rank) LIMIT 10000  ;

-- SELECT * FROM major_info WHERE school_id = 1743 and province = "广东";
-- 
-- SELECT * FROM major_score_rank WHERE major_id = 221694 and province = "广东";

SELECT * from major_info
WHERE low_score = 9  ;