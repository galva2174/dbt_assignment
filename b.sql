-- Select all data from Clubs table
SELECT * FROM Clubs;

-- Count rows in Clubs table
SELECT COUNT(*) FROM Clubs;

-- Select all data from Members table
SELECT * FROM Members;

-- Count rows in Members table
SELECT COUNT(*) FROM Members;

-- Select all data from Events table
SELECT * FROM Events;

-- Count rows in Events table
SELECT COUNT(*) FROM Events;

-- Select all data from Activities table
SELECT * FROM Activities;

-- Count rows in Activities table
SELECT COUNT(*) FROM Activities;

-- Select all data from FacultyMembers table
SELECT * FROM FacultyMembers;

-- Count rows in FacultyMembers table
SELECT COUNT(*) FROM FacultyMembers;

-- Index scan
SELECT FirstName, LastName, Email
FROM Members
WHERE ClubID = 1;

SELECT FirstName, LastName, Email
FROM FacultyMembers
WHERE Email = 'prof.andrea.kettler499@university.edu';



-- Table scan
SELECT * FROM Clubs;
SELECT * FROM MEMBERS;

SELECT *
FROM Members
JOIN Clubs ON Members.ClubID = Clubs.ClubID
JOIN Events ON Clubs.ClubID = Events.ClubID;

SELECT Members.FirstName, Members.LastName, Clubs.ClubName
FROM Members
JOIN Clubs ON Members.ClubID = Clubs.ClubID
WHERE Members.DOB > '2000-01-01';

