//
//  WeatherService.swift
//  Viper Test
//
//  Created by Vladimir Benko on 31.12.22.
//

import Foundation

class WeatherService {
    
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
