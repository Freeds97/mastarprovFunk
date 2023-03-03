-- Uppgift 2


data Person = Person {    name::String
                        , age::Int
                        , trips::[String]}
                        deriving (Show)

frida = Person "Frida" 26 ["Stockholm","Paris","Visby"]
raffe = Person "Raffe" 25 ["Nicosia","Stockholm","Amsterdam"]
elMayoDeMama = Person "Mayo" 25 ["Mayotown", "Mayoville", "Mayotown"]
persos = [frida,raffe,elMayoDeMama]

personList :: [Person] -> [String] -> [String]
personList [] _ = []
--personList persons locations 
personList persons locations = 
personList persons locations = personLocation (trips (head persons)) locations ++ personList (tail persons) (personLocation (trips (head persons)) locations)

personLocation :: [String] -> [String] -> [String]
personLocation [] _ = []
personLocation visits locations
    | ifNotUniqueLocation (head visits) locations = personLocation (tail visits) locations
    | otherwise = (head visits) : personLocation (tail visits) locations
   
ifNotUniqueLocation::String -> [String] -> Bool
--uniqueLocation [] _ = []
ifNotUniqueLocation visit locations
        | visit `elem` locations = True
        | otherwise = False