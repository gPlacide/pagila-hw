/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */


SELECT *
FROM
(
    SELECT actor.last_name, count(last_name) AS last_name_count
    FROM actor
    GROUP BY actor.last_name
) AS T 
WHERE last_name_count > 1
ORDER BY last_name_count DESC
;
