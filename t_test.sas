data p3;
input person drug1$ drug2$ SBP1 SBP2;
datalines;
1 A M 140 130
2 M A 200 210
3 M A 180 170
4 A M 156 138
5 A M 200 178
6 A M 160 140
7 M A 177 176
8 A M 189 156
9 A M 177 166
10 M A 180 170
11 M A 145 155
12 M A 166 150
13 A M 188 170
;
run;

proc ttest data = p3 plots=interval;
	var SBP1 SBP2/crossover=(drug1 drug2);
run;

