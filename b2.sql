
-- Index scan
EXPLAIN ANALYZE
SELECT FirstName, LastName, Email
FROM Members
WHERE ClubID = 1;

EXPLAIN ANALYZE
SELECT FirstName, LastName, Email
FROM FacultyMembers
WHERE Email = 'prof.andrea.kettler499@university.edu';



-- Table scan
EXPLAIN ANALYZE
SELECT * FROM Clubs;
EXPLAIN ANALYZE
SELECT * FROM MEMBERS;

EXPLAIN ANALYZE
SELECT *
FROM Members
JOIN Clubs ON Members.ClubID = Clubs.ClubID
JOIN Events ON Clubs.ClubID = Events.ClubID;

EXPLAIN ANALYZE
SELECT Members.FirstName, Members.LastName, Clubs.ClubName
FROM Members
JOIN Clubs ON Members.ClubID = Clubs.ClubID
WHERE Members.DOB > '2000-01-01';