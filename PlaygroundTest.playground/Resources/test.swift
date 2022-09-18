// MARK: - ===================================================================> Array
print("\n=====================================================> Array of dynamic \n")
var arrOfAny: [Any] = [0.75, true ,23, "Ringo"]
print(arrOfAny)
arrOfAny.append("test") // Add new item
arrOfAny.append(7) // Add new item
print(arrOfAny)
print("\n=====================================================> Array of Cities \n")
var arrOfCities: [String]  = ["London", "Tokyo", "Rome", "Budapest"]
var arrTest: Array<String> = ["Cairo" , "Giza"]
var allCities = arrOfCities + arrTest
print("Cities 1 Count = \(arrOfCities.count)")
print("Cities 2 Count = \(arrTest.count)")
print("All Cities Count = \(allCities.count)")
print("All Cities: \(allCities)")
print("Is Contains \"Cairo\": \(allCities.contains("Cairo"))")
print("Before Sort: \(allCities)")
print("After Sort: \(allCities.sorted())")
print("After Remove \"Cairo\": \(allCities.remove(at: 4))")
print("All Cities: \(allCities)")
print("Is Contains \"Cairo\": \(allCities.contains("Cairo"))")
print("\n=====================================================> Array of Numbers (Int) \n")
var scores = Array<Int>()
print("Scores: \(scores)")
scores.append(100)
scores.append(80)
scores.append(85)
print("Scores: \(scores)")
scores.removeAll()
print("Remove All Scores: \(scores)")

// Example of how to initialize an array
var team1: [String] = [String]()
var team2: [String] = []
var team3 = [String]()

// MARK: - ===================================================================> Dictionaries
print("\n=====================================================> Dictionaries \n")
var employee: [String: Any] = [
    "name": "Ahmed Ezzeldin",
    "job": "Programmer",
    "location": "Cairo",
    "salary": 7500,
]
print(employee["test" , default: "Not Found"])
print(employee["name" , default: "Not Found"])
print(employee["job" , default: "Not Found"])
print(employee["location" , default: "Not Found"])
print(employee["salary" , default: "Not Found"])

// MARK: - ===================================================================> Sets
print("\n=====================================================> Sets \n")
var actors: Set<String> = Set(["Denzel Washington", "Tom Cruise"])
print("Actors: \(actors)")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print("Actors: \(actors)")
actors.remove("Tom Cruise")
print("Actors after remove \"Tom Cruise\" : \(actors)")

print("\n=====================================================> Set with Array \n")
var nums: [Int] = [3, 5, 7, 2, 9, 3, 5, 1, 8, 7,]
var numsSet: Set<Int> = Set(nums)

print("Nums: \(nums)")
print("Nums Set: \(numsSet)")

print("Nums Count: \(nums.count)")
print("Nums Set Count: \(numsSet.count)")

// MARK: - ===================================================================> Enums
print("\n=====================================================> Enums \n")
enum weekday {
    case monday,tuesday, wednesday,thursday, friday
}
enum Direction {case north, south, east, west}

var today = weekday.friday
var windDirection = Direction.north
print("Today: \(today)")
print("Wind Direction: \(windDirection)")
