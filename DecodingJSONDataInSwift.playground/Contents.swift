import Foundation

// Fetch URL
let url = Bundle.main.url(forResource: "response", withExtension: "json")!

// Load Data
let data = try! Data(contentsOf: url)

do {
    let decoder = try JSONDecoder(data: data)
    let weatherData = try WeatherData(decoder: decoder)

    print(weatherData)

} catch {
    print(error)
}
