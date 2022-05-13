-- getChar
-- putChar
-- getLine
-- putStrLn

-- zad 1
-- getChar funkcija je -> getChar :: IO Char
-- putChar funckija je -> putChar :: Char -> IO ()
-- getLine funkcije je -> getLine :: IO String
-- putStrLn funkcija je -> putStrLn :: String -> IO ()

-- *Main> name <- getLine
-- Marin
-- *Main> :t name
-- name :: String
-- *Main> name
-- "Marin"
-- *Main> age <- getLine
-- 14
-- *Main> :t age
-- age :: String


-- zad 2
printNspaces 0 = return ()
printNspaces n = do
    putChar ' '
    printNspaces (num-1)
    where
        num = abs n

testF 10 = return ()
testF n = do
    printNspaces (round b)
    putStrLn "O"
    wait <- getLine
    testF (n+0.1)
    where
        b = (sin n)*10


    
