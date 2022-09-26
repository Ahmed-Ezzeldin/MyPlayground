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

// MARK: - ===================================================================> Functions
print("\n=====================================================> Functions \n")

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()
print("\n============> Some time after that \n")
showWelcome()

print("\n=====================================================> Return values from functions \n")
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
areLettersIdentical(string1: "ahmed", string2: "medsah")

print("\n=====================================================> Return multiple values from functions \n")
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

print("\n=====================================================> customize parameter labels \n")
// If we add an underscore before the parameter name, we can remove the external parameter label like so:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
print("Is Uppercase: \(isUppercase(string))")

// Well, the other option is to write a second name there: one to use externally, and one to use internally.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)

print("\n=====================================================> Default values for parameters \n")

func printTimesTables(for number: Int, end: Int = 3) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
    print("----------------")
}

printTimesTables(for: 2, end: 5)
printTimesTables(for: 2)

print("\n=====================================================> Handle errors in functions \n")
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

print("\n=====================================================> Handle errors in functions \n")
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

// MARK: - ===================================================================> Structs
print("\n=====================================================> Create your own structs \n")
struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating  func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("\(name) Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var kane = Employee(name: "Lana Kane")
var poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
poovey.takeVacation(days: 3)

print("\n=====================================================> Take action when a property changes \n")
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts = [String]() {
        willSet {
            print("==========================: willSet")
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("==========================: didSet")
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian")
app.contacts.append("Allen")
print("\n=====================================================> Ceate custom initializers \n")
struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Megan R", number: 15)

// MARK: - ===================================================================> Temp
// MARK: - ===================================================================> Temp
// MARK: - ===================================================================> Temp
// MARK: - ===================================================================> Temp
// MARK: - ===================================================================> Temp



