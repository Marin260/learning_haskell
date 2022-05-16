import Data.Char
import Data.List


-- key to word size
createKey :: String -> [Char] -> [Char]
createKey key str = do
        (intercalate "" (replicate repeat key)) ++ (take rest key)
    where
        repeat = (length str) `div` (length key)
        rest = (length str) `mod` (length key)

-- isAplha
cleanString :: [Char] -> [Char]
cleanString s = [toLower x | x <- s, isAlpha x]

-- get new char after char shift
shiftRight :: Char -> Char -> Char
shiftRight txtChar keyChar = 
    if ord number > ord 'z' then chr (ord 'a' + ord number - ord 'z' - 1)
    else number 
    where
        number = chr (ord keyChar - ord 'a' + ord txtChar)

shiftLeft :: Char -> Char -> Char
shiftLeft txtChar keyChar = 
    if ord number < ord 'a' then chr (ord 'z' - (ord 'a' - ord number) + 1) 
    else number 
    where
        number = chr (ord txtChar - (ord keyChar - ord 'a'))


-- actual chiper
vigenereChiper :: [Char] -> [Char] -> [Char]
vigenereChiper key s = 
    [shiftRight (plainTxt!!x) (newKey!!x) | x <- [0..((length plainTxt)-1)]]
    where
        plainTxt = cleanString s
        newKey = createKey key plainTxt

-- vigenereDechiper 
vigenereDechiper :: [Char] -> [Char] -> [Char]
vigenereDechiper key s = 
    [shiftLeft (s!!x) (newKey!!x) | x <- [0..((length s)-1)]]
    where
        newKey = createKey key s

-- find all keys
findKey :: [[Char]]
findKey = [chr x : chr y : chr z : []| x <- [97..122], y <- [97..122], z <- [97..122]]

checkString :: [[Char]]
checkString = 
    [vigenereDechiper x word | x <- findKey, isInfixOf "the" (vigenereDechiper x word) ]
    where
        commonWords = "the"
        word = "wzjdacrwarcclwqhcqklqldqkpnxppwtlq"

-- ANSWER: "to map fold or filter that is the question"


  
