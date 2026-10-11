// Exercise 04: Closures, map, filter, and reduce
// Module: SE4041 Mobile Application Design & Development

let marks = [72, 45, 65, 48, 90]

// Filter
let passed = marks.filter { $0 >= 50 }
print(passed)

// Map
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)

// Reduce
let total = marks.reduce(0) { $0 + $1 }
print(total)

// Activity 5: Prices processing using closures
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100.0 }
print(expensivePrices)

let discountedOrIncreasedPrices = prices.map { $0 + 10.0 }
print(discountedOrIncreasedPrices)

let totalPrice = prices.reduce(0.0) { $0 + $1 }
print(totalPrice)
