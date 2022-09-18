import Cocoa


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






