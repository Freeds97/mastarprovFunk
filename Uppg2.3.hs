-- Uppgift 2

data Person = Person {    name::String
                        , age::Int
                        , trips::[String]}
                        deriving (Show)

frida = Person "Frida" 26 ["Stockholm","Paris","Visby"]
raffe = Person "Raffe" 25 ["Nicosia","Stockholm","Amsterdam"]
elMayoDeMama = Person "Mayo" 25 ["Mayotown", "Mayoville", "Mayotown"]
persos = [frida,raffe,elMayoDeMama]

myMain :: [Person] -> [String]
myMain persons = uniqueLocations (personList persons)

uniqueLocations :: [String] -> [String]
uniqueLocations [] = []
uniqueLocations locations
  | (head locations) `elem` (tail locations) = uniqueLocations (tail locations)
  | otherwise = (head locations) : uniqueLocations (tail locations)

personList :: [Person] -> [String]
personList [] = []
personList persons = (trips (head persons)) ++ personList (tail persons) 
