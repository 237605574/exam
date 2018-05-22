SELECT
	*
FROM
	major_info
WHERE
	low_rank <= 2000
AND max_rank > 2000
AND province = "广东"
AND student_type = 0
ORDER BY
	major_info.school_rank ASC,
	major_info.school_id ASC
LIMIT 0,
 10 


-- SELECT * FROM school_info
-- WHERE school_name = "西南大学"
-- SELECT * FROM major_score_rank,school_major
-- where major_score_rank.major_id = school_major.major_id and school_major.school_id = 1679
-- and province = "北京" and student_type = 1 and school_major.major_name ="应用心理学"
-- SELECT * FROM major_score_rank WHERE major_id = 1354361
/*
SELECT
	*
FROM
	major_score_rank
WHERE
major_id = 1481 
AND province = "广东"
AND student_type = 1
*/
-- SELECT * FROM school_info WHERE school_name = "清华大学"
-- SELECT
-- 	*
-- FROM
-- 	major_score_rank,
-- 	school_major
-- WHERE
-- 	school_id = 14
-- AND province = "北京"
-- AND student_type = 1
-- AND school_major.major_id = major_score_rank.major_id
-- AND YEAR = 2017
-- SELECT count(*) FROM major_info WHERE max_rank is null 
-- 
-- SELECT * FROM major_info where major_id = 354375 and max_rank is not null

-- DELETE  FROM major_info WHERE max_rank is null

-- SELECT count(*) FROM major_info
