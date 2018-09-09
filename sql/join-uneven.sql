-- Say that there are around five rows in the Type table and two
-- billion rows in the Record table.

CREATE TEMP TABLE Record (
    ID INT PRIMARY KEY,
    RecordTypeID INT
);

CREATE TEMP TABLE Type (
    ID INT PRIMARY KEY
);

-- We create an index here which should speed things up....
CREATE INDEX RecordByRecordType ON Record (RecordTypeID, ID);

-- .... Data is inserted here, in a random order but with a
-- surjective relationship between Type and Record.

-- Question: Why in some cases will this query run so slowly?
SELECT Record.ID
FROM Record
JOIN Type ON Type.ID = Record.RecordTypeID;
