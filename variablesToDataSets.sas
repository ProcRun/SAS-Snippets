/*-----------------------------------------------------------------------------
 variablesToDataSets.sas

 Basic code that will some variation of the variables in a data set into 
 individual data sets.

 Author: ProcRun (http://www.procrun.com)
-----------------------------------------------------------------------------*/

  
*--- Get all the variable names from the data set ---;
proc contents data = sashelp.yr1001 
				out = names (keep = name)
				noprint;
run;

*--- Put count and distinct names into macro variables ---;
proc sql;
 select
 	distinct name,
	count(distinct name)
 into
 	:name1 - :name9999, 
	:count
 from
	names
 where
 	substr(name, 1, 1) = 'S';
quit;



 
