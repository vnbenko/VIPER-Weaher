//
//  ImageViewerInteractor.swift
//  Viper Test
//
//  Created by Vladimir Benko on 2.01.23
//

import UIKit
protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    
    weak var presenter: ImageViewerPresenterProtocol?
    
    var temperature: Int
    
    init(temperature: Int) {
        self.temperature = temperature
    }
    
    func getImageForCurrentTemperature() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake")
        } else if temperature >= 0, temperature < 10 {
            return UIImage(systemName: "cloud.fill")
        } else {
            return UIImage(systemName: "sun.min.fill")
        }
    }
}
