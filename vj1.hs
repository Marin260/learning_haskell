-- komentari
-- :r  reloada vec loadan file 
import Data.List  -- import mora  bit na vrhu

-- zad 1
absVall :: Integral a => a -> a
absVall a | a < 0 = -a
    | otherwise = a

-- zad 2
ocjene :: Integral a => a -> a
ocjene a | a < 50 = 1
    | a < 60 = 2
    | a < 75 = 3
    | a < 90 = 4
    | otherwise = 5

-- zad 3
-- [char] -> to string
inicijali s1 s2 = [head s1] ++ [head s2]

-- zad 4
palindrom s | s == reverse s = True
    | otherwise = False

-- zad 5
sredinaListe l = init ( tail l ) -- dodaj provjeru broja el u listi

-- zad 6
posloziListu l = nub ( sort l )

-- zad 7
dijeljitelji n = [x | x <- [1..n], mod n x == 0]

-- zad 8
prost n | length( dijeljitelji n ) > 2 = False
    | otherwise = True

-- zad 9
prostiDoN n = [x | x <- [1..n], prost x]

-- zad 10
pitagorineTrojke n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- zad 11
skalarniProdukt s1 s2 = sum (zipWith (*) s1 s2)

-- zad 12
parovi s1 = zip (init s1) (tail s1)

-- zad 13
-- sortiranaLista s1 = parovi