/*
UPDATE onescore_2017
SET student_type = 1
WHERE
	type = "理科";

UPDATE onescore_2017
SET student_type = 0
WHERE
	type = "文科";
*/
-- SELECT
-- 	min(score)
-- FROM
-- 	onescore_2017
-- WHERE
-- 	rank <= 100
-- AND student_type = 0
-- AND `year` = 2017
-- AND province = "北京";

-- 分别对四个分数段进行更新 ,复制运行四遍就可以了

UPDATE major_info m
SET m.max_score = (SELECT min(score) FROM onescore_2017 
WHERE rank < m.max_rank AND student_type = m.student_type
AND province = m.province) ;
-- 
-- UPDATE major_info m
-- SET m.low_score = (SELECT min(score) FROM onescore_2017 
-- WHERE rank < m.low_rank AND student_type = m.student_type
-- AND province = m.province);
-- 
-- UPDATE major_info m
-- SET m.high_score = (SELECT min(score) FROM onescore_2017 
-- WHERE rank < m.high_rank AND student_type = m.student_type
-- AND province = m.province);
-- 
-- UPDATE major_info m
-- SET m.middle_score = (SELECT min(score) FROM onescore_2017 
-- WHERE rank < m.middle_rank AND student_type = m.student_type
-- AND province = m.province);
-- 