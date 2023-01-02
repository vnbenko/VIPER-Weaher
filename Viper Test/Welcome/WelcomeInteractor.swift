//
//  WelcomeInteractor.swift
//  Viper Test
//
//  Created by Vladimir Benko on 31.12.22.
//


// Мозг приложения, компонент, который отвечает за работу с данными: обращение к вебсервисам, к внутренней базе данных, юзердефолтс, кейчейн
import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
    var temperature: Int { get }
}

class WelcomeInteractor: WelcomeInteractorProtocol {
    
    weak var presenter: WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temperature = weather
        }
    }
    
    

    
    
    
}
