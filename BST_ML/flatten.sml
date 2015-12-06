fun mystery([ ])   = []
    | mystery(h::t) = h @ mystery(t)

val it = mystery( [[1,2], [3,4,5], [6,7,8,9,10,[11,15]]]);
