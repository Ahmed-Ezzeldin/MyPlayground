import Cocoa

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
