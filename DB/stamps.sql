-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE `Collections` (
    `CollectionID` int  NOT NULL ,
    `OwnerCollName` string  NOT NULL ,
    `YearIssued` int  NOT NULL ,
    PRIMARY KEY (
        `CollectionID`
    )
);

CREATE TABLE `Albums` (
    `AlbumID` int  NOT NULL ,
    `AlbumName` string  NOT NULL ,
    `YearIssued` int  NOT NULL ,
    `TotalStamps` int  NOT NULL ,
    `StampID` int  NOT NULL ,
    `CollectionID` int  NOT NULL ,
    PRIMARY KEY (
        `AlbumID`
    )
);

CREATE TABLE `Stamps` (
    `StampID` int  NOT NULL ,
    `YearIssued` int  NOT NULL ,
    `PicURL` string  NOT NULL ,
    `Description` string  NOT NULL ,
    `RepeatedStamps` int  NOT NULL ,
    `SizeWidth` int  NOT NULL ,
    `SizeHeigth` int  NOT NULL ,
    `AlbumID` int  NOT NULL ,
    PRIMARY KEY (
        `StampID`
    )
);

ALTER TABLE `Albums` ADD CONSTRAINT `fk_Albums_CollectionID` FOREIGN KEY(`CollectionID`)
REFERENCES `Collections` (`CollectionID`);

ALTER TABLE `Stamps` ADD CONSTRAINT `fk_Stamps_AlbumID` FOREIGN KEY(`AlbumID`)
REFERENCES `Albums` (`AlbumID`);

