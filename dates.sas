/*-----------------------------------------------------------------------------
 dates.sas

 Useful examples of the built in SAS date functions to automatically generate
 dates within SAS code

 Author: ProcRun (http://www.procrun.com)
-----------------------------------------------------------------------------*/

*--- Date of the first and last day of the previous month ---;
data _null_;
 x = intnx('month', today(), -1);
 y = intnx('month', today(), -1, 'e');
 call symput('first', put(x, yymmddd10.));
 call symput('last',  put(y, yymmddd10.));
run;

%put The first day of last month is &first.;
%put The last day of last month is &last.;