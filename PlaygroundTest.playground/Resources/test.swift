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

// MARK: - ===================================================================> Conditions
print("\n=====================================================> if and else if \n")
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

print("\n=====================================================> switch \n")

enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.wind

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
    fallthrough // to execute the next case
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

print("\n=====================================================> Ternary conditional \n")
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print("can i vote? \(canVote)")

// MARK: - ===================================================================> Loops
print("\n=====================================================> Loop \n")
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) = \(5 * i)")
}

print("\n=====================================================> while loop \n")
var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}
print("Blast off!")

print("\n=====================================================> break and continue \n")
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
//        continue
        break
    }
    print("Found picture: \(filename)")
}

// MARK: - ===================================================================>
// MARK: - ===================================================================>



