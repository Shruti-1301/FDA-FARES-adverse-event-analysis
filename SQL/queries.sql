-- Query 1: Top 20 Drugs by Adverse Event Report Count
SELECT drugname,
       COUNT(*) AS total_reports,
       SUM(is_fatal) AS fatal_cases,
       ROUND(100.0 * SUM(is_fatal) / COUNT(*), 2) AS fatality_rate_pct
FROM faers
GROUP BY drugname
ORDER BY total_reports DESC
LIMIT 20;


-- Query 2: Top 20 Drugs by Fatality Rate (minimum 1000 reports)
SELECT drugname,
       COUNT(*) AS total_reports,
       SUM(is_fatal) AS fatal_cases,
       ROUND(100.0 * SUM(is_fatal) / COUNT(*), 2) AS fatality_rate_pct
FROM faers
GROUP BY drugname
HAVING total_reports >= 1000
ORDER BY fatality_rate_pct DESC
LIMIT 20;


-- Query 3: Fatality Rate by Age Group
SELECT age_group,
       COUNT(*) AS total_reports,
       SUM(is_fatal) AS fatal_cases,
       ROUND(100.0 * SUM(is_fatal) / COUNT(*), 2) AS fatality_rate_pct
FROM faers
GROUP BY age_group
ORDER BY fatality_rate_pct DESC;


-- Query 4: Top 20 Most Common Reactions with Fatality Rate
SELECT reaction,
       COUNT(*) AS report_count,
       SUM(is_fatal) AS fatal_count,
       ROUND(100.0 * SUM(is_fatal) / COUNT(*), 2) AS fatality_rate_pct
FROM faers
GROUP BY reaction
ORDER BY report_count DESC
LIMIT 20;


-- Query 5: Top Drug-Reaction Pairs by Frequency (minimum 500 reports)
SELECT drugname,
       reaction,
       COUNT(*) AS pair_count,
       SUM(is_fatal) AS fatal_count,
       ROUND(100.0 * SUM(is_fatal) / COUNT(*), 2) AS fatality_rate_pct
FROM faers
GROUP BY drugname, reaction
HAVING pair_count >= 500
ORDER BY pair_count DESC
LIMIT 25;