/* Generated Code (IMPORT) */
/* Source File: Clothing_Store_Orders.csv */
/* Source Path: /home/u59586361 */
/* Code generated on: 8/6/23, 2:54 AM */

%web_drop_table(WORK.Orders);


FILENAME REFFILE '/home/u59586361/Clothing_Store_Orders.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.Orders;
	GETNAMES=YES;
	guessingrows=MAX;
RUN;

PROC CONTENTS DATA=WORK.Orders; RUN;


%web_open_table(WORK.Orders);