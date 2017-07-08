prologues := -1;

beginfig(1);

pickup pencircle scaled 1pt;

unfill unitsquare scaled 1cm;

%fill (1cm+.5pt, 1cm){down} .. (0, -.5pt){left} -- (1cm, 0) -- cycle withcolor .5[black, white];
draw (1cm+.5pt, 1cm){down} .. (0, -.5pt){left};
draw (1cm+.5pt, 1cm){down} .. {dir -170}(1mm, 4mm){dir -80} .. (0, -.5pt){left};

clip currentpicture to unitsquare scaled 1cm;

endfig;

end;
