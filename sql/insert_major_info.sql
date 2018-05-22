-- SELECT * FROM school_major,province,student_type,school_info 
-- WHERE school_info.school_id = school_major.school_id
-- LIMIT 0,100;
INSERT IGNORE INTO major_info (
	school_id,
	major_id,
	major_name,
	school_rank,
	province,
	student_type
) (SELECT
	school_info.school_id,
	major_id,
	major_name,
	school_heat_rank,
	province,
	student_type
FROM
	school_major,
	province,
	student_type,
	school_info
WHERE
	school_info.school_id = school_major.school_id
);