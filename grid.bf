SLOT 1 = DUMP STUFF HERE
SLOT 2 = USER INPUT 1
SLOT 3 = USER INPUT 2
SLOT 4 = I (LOOP INDEX)
SLOT 5 = J (LOOP INDEX)
SLOT 6 = "#"
SLOT 7 = LINE FEED
SLOT 8 = LOOP INDEX STORAGE

FIRST GENERATE #:
>>> GO TO 4
+++++ ++ SET LOOP INDEX TO 7
[>> +++++ <<-] ADD 5 EACH ROUND

####SLOT 6 IS NOW "#" (AKA 35) AND POINTER IS AT 4####

NEXT GENERATE LINE FEED TO SLOT 7
>>> +++++ +++++
##### WE ARE NOW AT SLOT 7 THAT IS SET TO LINE FEED (AKA 10)

#NOW CONVERT USER INPUT FROM ASCII TO INTEGER

<<<<<, GO TO 2 AND READ INPUT
>, GO TO 3 AND READ INPUT 

> ++++ GO TO 4 AND SET IT AS 4
[<----- ----- --> <<----- ----- -->>-] REMOVE 48 FROM SLOTS 2 AND 3
#### POINTER IS AT 4

NOW GO TO SLOT 3 AND START OUTER LOOP
<
[
GO TO SLOT 2 FOR INNER LOOP
	<
	[
	>>>>.<<<< GO TO 6 AND PRINT # THEN GO BACK
	>>>>>> + <<<<<< - # MOVE RUNNING INDEX TO STORAGE
	]
	>>>>>> GO TO 8
	[
	<<<<<< + >>>>>> - REFILL THE INNER LOOP INDEX AND EMPTY STORAGE
	]

	<. PRINT LINE FEED AT 7
	GO TO 3
	<<<<
	-
]
