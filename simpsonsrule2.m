function n = simpsonsrule(functionhandle, leftend, rightend, intervals)
%function takes arguments and approximates area under curve of
%functionhandle, bounded by leftend and right end with number of intervals
%= intervals



returnvalue = ((rightend - leftend)/6) * (functionhandle(leftend)+4*functionhandle((leftend+rightend)/2)+functionhandle(rightend));

display(returnvalue)