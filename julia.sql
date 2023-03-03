/*-----Total submissions per hacker for the 15days--------*/
SELECT Hackers.hacker_id, Hackers.Name AS 'HName', COUNT(submission_date) AS 'Number_of_submissions'
FROM Hackers INNER JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
GROUP BY Hackers.hacker_id, Hackers.Name
ORDER BY Number_of_submissions DESC

/*-----------Unique submissions for each day------------*/
WITH daily_subs AS (
    SELECT sub.submission_date, COUNT(submission_date) AS 'Subs_per_hacker',
    h.name AS 'Hacker_with_Max_Submissions'
    FROM Hackers h JOIN Submissions sub ON h.hacker_id = sub.hacker_id
    GROUP BY sub.submission_date, h.Name
    ORDER BY sub.submission_date)
SELECT submission_date, count(Subs_per_hacker) AS 'top_unique_submissions'
FROM daily_subs
GROUP BY submission_date
ORDER BY submission_date