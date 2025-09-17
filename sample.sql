
-- Declare start and end timestamps
DECLARE utc_start_datetime TIMESTAMP DEFAULT TIMESTAMP(parser_timestamp('%Y%m%d%H%M%S', @start_run_id, 'America/Los_Angeles'));
DECLARE utc_end_datetime   TIMESTAMP DEFAULT TIMESTAMP(parser_timestamp('%Y%m%d%H%M%S', @end_run_id, 'America/Los_Angeles'));

-- Select query using declared variables
SELECT 
    utc_start_datetime AS start_time_utc,
    utc_end_datetime   AS end_time_utc;
