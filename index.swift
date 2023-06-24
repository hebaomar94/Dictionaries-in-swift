var weeklyTemperatures: [String: Int] = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
// To retrieve the temperature value of the first day, "Monday," from the weeklyTemperatures dictionary, you can use the following code:

if let mondayTemperature = weeklyTemperatures["Monday"] {
    let modified = mondayTemperature + 20
    print("The temperature on Monday is \(modified) degrees.")
} else {
    print("No temperature data available for Monday.")
}

//Step 4: Add a new key-value pair

if let temperature = weeklyTemperatures["Sunday"] {
    // "Sunday" is already stored in the dictionary
    print("The temperature on Sunday is \(temperature) degrees.")
    print("Key: Sunday, Value: \(temperature)")
} else {
    // "Sunday" is not stored in the dictionary
    weeklyTemperatures["Sunday"] = 100
    print("No temperature data available for Sunday.")
    let lastDayTemperature = weeklyTemperatures["Sunday"]!
    print("The temperature on Sunday is \(lastDayTemperature) degrees.")
}

//Step 5: Reset the dictionary for a new week

if weeklyTemperatures.count == 7 {
    print("You have access to the weather forecast of the whole week.")
    weeklyTemperatures = [:]
    print("Reset weekly temperatures for next week!")
  }
