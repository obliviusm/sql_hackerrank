-- problem: https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT DISTINCT o.n, CASE
    WHEN o.p IS NULL THEN 'Root'
    WHEN c.p IS NULL THEN 'Leaf'
    ELSE 'Inner'
END AS t
FROM bst o LEFT OUTER JOIN bst c 
ON o.n = c.p
ORDER BY n;
