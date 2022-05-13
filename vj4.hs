import Data.List
import Data.Char
-- zad 1
brojiRazl s = foldr (\x y -> y + 1) 0 (nub (s))

-- zad 2
brojSlova s = length (filter isAlpha s) 

-- zad 3
zadnjeInicijale s = map last s

-- zad 4
-- duljinaListe = foldl (\x -> + 1) 0

-- zad 5
--mojConcat s = foldr (\x -> []) 0 s

-- zad 7
zamjeni s = map (\x -> if x == ' ' then '_' else x) s

