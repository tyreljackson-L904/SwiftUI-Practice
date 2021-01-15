//
//  WeatherService.swift
//  Weather
//
//  Created by Tyrel Jackson on 12/29/20.
//

import CoreLocation
import Foundation

public final class WeatherService: NSObject {
    
    private let locationManager = CLLocationManager()
    private let API_Key = "a08ca05df501430ddb89b23b1ac57915"
    private var completionHandler: ((Weather) -> Void)?
    
    public func loadWeatherData(_ completionHandler: @escaping(Weather) -> Void) {
        self.completionHandler = completionHandler
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    private func makeDataRequest(forCoordinates coordinates: CLLocationCoordinate2D) {
        
    }
}

struct APIResponse {
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}
struct APIMain: Decodable {
    let temp: Double
}
struct APIWeather: Decodable {
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey {
        case description
        case iconName = "main"
    }
}
