//
//  DateService.swift
//  Viper Test
//
//  Created by Vladimir Benko on 31.12.22.
//

import Foundation

class DateService {
    
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            completion(Date())
        }
    }
}
