//
//  Weather.swift
//  HW3-Solution
//
//  Created by Carson Uecker-Herman on 11/24/19.
//  Copyright © 2019 Jonathan Engelsma. All rights reserved.
//

import Foundation

struct Weather {
    var iconName : String
    var temperature : Double
    var summary : String
    
    init(iconName: String, temperature: Double, summary: String) {
        self.iconName = iconName
        self.temperature = temperature
        self.summary = summary
    }
}

protocol WeatherService {
    func getWeatherForDate(date: Date, forLocation location: (Double, Double),
                           completion: @escaping (Weather?) -> Void)
}

