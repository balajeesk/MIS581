
PROC MEANS DATA=WORK.Orders;
RUN;

PROC sgplot DATA=WORK.Orders;
*histogram order_id net_sales;
series x=order_id y=net_sale;
run; 

PROC sgplot DATA=WORK.Orders;
series x=customer_id y=net_sale;
run; 


PROC MEANS DATA=WORK.Sales;
RUN;


ods graphics on;

PROC CORR DATA=WORK.Orders PLOTS(MAXPOINTS= 254)
   plots=matrix(histogram) ;
*   VAR Quantity;
*   WITH Customer_ID ;
RUN;

ods graphics off;

PROC SQL;

CREATE TABLE WORK.orders_pred as
SELECT distinct Order_ID, territory_id, Net_Sale AS Sale FROM WORK.Orders
group by Order_ID
order by Sale DESC;
QUIT;


proc SQL;
select * from work.sales;

QUIT;

PROC SQL;

INSERT INTO WORK.Orders

SET Order_ID = 12001,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12002,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12003,
	territory_id = 99000,
    net_Sale = 0
    
SET Order_ID = 12004,
	territory_id = 99000,
    net_Sale = 0
    
SET Order_ID = 12004,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12005,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12006,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12007,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12008,
	territory_id = 99000,
    net_Sale = 0

SET Order_ID = 12009,
	territory_id = 99000,
    net_Sale = 0 
    
SET Order_ID = 12010,
	territory_id = 99000,
   net_Sale= 0;

QUIT;

data work.Sales1;
    set WORK.Sales(rename=("Customer Id"N=Customer_Id));
run;


PROC SQL;


INSERT INTO WORK.Sales1

SET Customer_Id =  40000,
	Promos = 30,
	Mon = 0

SET Customer_Id =  40001,
	Promos = 20,
	Mon = 0

SET Customer_Id =  40003,
	Promos = 10,
	Mon = 0;

QUIT;

PROC SQL;


INSERT INTO WORK.Sales1

SET Customer_Id =  40003,
	Promos = 40,
	Mon = 0;
	
QUIT;


proc SQL;
select * from work.sales1 WHERE Customer_Id IN (40000, 40001, 40002, 40003);

QUIT;
