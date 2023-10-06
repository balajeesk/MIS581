/* Generated Code (IMPORT) */
/* Source File: Clothing_Store_Sales.csv */
/* Source Path: /home/u59586361 */
/* Code generated on: 8/6/23, 3:03 AM */

%web_drop_table(WORK.SALES);


FILENAME REFFILE '/home/u59586361/Clothing_Store_Orders.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.SALES;
	GETNAMES=YES;
	VALIDVARNAME=V7;
	guessingrows=MAX;
	
RUN;

PROC CONTENTS DATA=WORK.SALES; RUN;


%web_open_table(WORK.SALES);