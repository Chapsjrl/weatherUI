//
//  WeatherDay.swift
//  Weather
//
//  Created by Jesus Rivera on 13/02/23.
//

import Foundation

struct WeatherDay {
    var id = UUID()
    var day: DayOfTheWeek
    var weatherIcon: String
    var temperature: Int
}

enum DayOfTheWeek {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    var dayShortName: String {
        switch self {
        case .monday:
             return "MON"
        case .tuesday:
             return "TUE"
        case .wednesday:
             return "WED"
        case .thursday:
             return "THU"
        case .friday:
             return "FRI"
        case .saturday:
             return "SAT"
        case .sunday:
             return "SUN"
        }
    }
}
