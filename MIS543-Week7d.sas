proc reg data=WORK.Orders alpha=0.95 plots(only)=(diagnostics residuals 
		fitplot observedbypredicted);
	model Net_Sale=Order_ID /P CLI;
	run;
quit;

proc reg data=WORK.Sales1 alpha=0.05 plots(only)=(diagnostics residuals 
		fitplot observedbypredicted);
	model Mon=Customer_Id /P CLI;
	run;
quit;
