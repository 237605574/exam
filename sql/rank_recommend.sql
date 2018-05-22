-- UPDATE major_info m,
--  major_score_rank s
-- SET m.max_rank = s.min_rank * 1.2,
--  m.high_rank = s.min_rank,
--  m.middle_rank = s.avg_rank,
--  m.low_rank = s.max_rank * 0.8
-- WHERE
-- 	m.major_id = s.major_id
-- AND m.province = s.province
-- AND m.student_type = s.student_type;
-- 
-- UPDATE major_info m,
--  major_score_rank s
-- SET m.max_rank = s.min_rank * 1.2,
--  m.high_rank = s.min_rank,
--  m.middle_rank = s.avg_rank,
--  m.low_rank = s.max_rank * 0.8
-- WHERE
-- 	m.major_id = s.major_id
-- AND m.province = s.province
-- AND m.student_type = s.student_type
-- AND s.`year` = 2017;
-- 
-- -- 如果有些数据没有最高最低分
-- 
-- -- middle为-1的情况
-- UPDATE major_info 
-- SET middle_rank = low_rank*1.1 
-- WHERE middle_rank = -1;
-- 
-- UPDATE major_info 
-- SET middle_rank = high_rank*0.9 
-- WHERE middle_rank = -1;
-- 
-- UPDATE major_info 
-- SET middle_rank = max_rank*0.9 *0.9
-- WHERE middle_rank = -1;
-- 
-- -- low为-1
-- UPDATE major_info 
-- SET low_rank = middle_rank*0.9 
-- WHERE low_rank = -1;
-- 
-- UPDATE major_info 
-- SET low_rank = high_rank*0.9 *0.9 
-- WHERE low_rank = -1;
-- 
-- UPDATE major_info 
-- SET low_rank = max_rank*0.9 *0.9*0.9 
-- WHERE low_rank = -1;


-- high为-1的情况
UPDATE major_info 
SET high_rank = middle_rank*1.1 
WHERE high_rank = -1;

UPDATE major_info 
SET high_rank = low_rank*1.1*1.1
WHERE high_rank = -1;

UPDATE major_info 
SET high_rank = max_rank*0.9
WHERE high_rank = -1;


-- max为-1的情况
UPDATE major_info 
SET max_rank = high_rank*1.1 
WHERE max_rank = -1;

UPDATE major_info 
SET max_rank = middle_rank*1.1*1.1
WHERE max_rank = -1;

UPDATE major_info 
SET max_rank = low_rank*1.1*1.1*1.1
WHERE max_rank = -1;