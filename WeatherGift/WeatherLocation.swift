//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by John Pappas on 10/12/20.
//  Copyright © 2020 John Pappas. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var latitude: Double
    var longitude: Double
    
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
    func getData() {
        let urlString = "https://api.openweathermap.org/data/2.5/onecall?lat=\(latitude)&lon=\(longitude)&units=imperial&exclude=minutely&appid=\(APIkeys.openWeatherKey)"
        
        print("We are accessing the URL \(urlString).")
        
        guard let url = URL(string: urlString) else {
            print("Error: could not create a URL from \(urlString).")
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print("\(json)")
            } catch {
                print("JSON ERROR: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
}



