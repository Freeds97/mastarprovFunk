-- Uppgift 2

data Person = Person {    name::String
                        , age::Int
                        , trips::[String]}
                        deriving (Show)

frida = Person "Frida" 26 ["Stockholm","Paris","Visby"]
raffe = Person "Raffe" 25 ["Nicosia","Stockholm","Amsterdam"]
leonie = Person "Leonie" 25 ["Doggotown", "Doggoville", "Doggotown"]
persos = [frida,raffe,leonie]

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