-- UPDATE major_info m,
--  major_score_rank s
-- SET m.max_score = s.min_score - 10,
--  m.high_score = s.min_score,
--  m.middle_score = s.avg_score,
--  m.low_score = s.max_score + 10
-- WHERE
-- 	m.major_id = s.major_id
-- AND m.province = s.province
-- AND m.student_type = s.student_type;


-- 分数为空的情况

-- low 分数为9
-- UPDATE major_info 
-- SET low_score = high_score + 20 
-- WHERE low_score = 9 and high_score != 1 ;
-- 
-- UPDATE major_info 
-- SET low_score = max_score + 40
-- WHERE low_score = 9 and max_score != -11;

-- middle 为 -1
-- UPDATE major_info 
-- SET middle_score = low_score - 10 
-- WHERE middle_score = -1 ;

-- high 为-1

UPDATE major_info 
SET high_score = middle_score - 10 
WHERE high_score = -1 ;

-- max 为 -11

UPDATE major_info 
SET max_score = high_score - 10 
WHERE max_score = -11 ;