import Foundation

// Fetch URL
let url = Bundle.main.url(forResource: "response", withExtension: "json")!

// Load Data
let data = try! Data(contentsOf: url)

do {
    let weatherData: WeatherData = try JSONDecoder.decode(data: data)

    print(weatherData)

} catch {
    print(error)
}
