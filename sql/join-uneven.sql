-- Say that there are around five rows in the Type table and two
-- billion rows in the Record table. Why does in some cases will this query
-- run so slowly?

CREATE TEMP TABLE Record (
    ID INT PRIMARY KEY,
    RecordTypeID INT
);

CREATE TEMP TABLE Type (
    ID INT PRIMARY KEY
);

CREATE INDEX RecordByRecordType ON Record (RecordTypeID, ID);

-- .... Data is inserted here, in a random order but with a
-- surjective relationship between Type and Record.

SELECT Record.ID
FROM Record
JOIN Type ON Type.ID = Record.RecordTypeID;