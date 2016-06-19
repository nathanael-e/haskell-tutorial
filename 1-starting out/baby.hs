doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 
                      then x 
                      else doubleMe x

doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- b<-[1..c] = side b is not larger than side c
-- a<-[1..b] = side a is not larger than side b
triangle = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c==24]
