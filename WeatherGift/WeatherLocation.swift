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

}



