//
//  WelcomePresenter.swift
//  Viper Test
//
//  Created by Vladimir Benko on 31.12.22.
//


//Бизес-логика
//презентору нужно сообщить, когда наш вьюконтроллер прогрузится
import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
    func didTapImageButton()
    
}

class WelcomePresenter {
    
    weak var view: WelcomeViewProtocol?
    var router: WelcomeRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    init(interactor: WelcomeInteractorProtocol, router: WelcomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension WelcomePresenter: WelcomePresenterProtocol {
    
    func viewDidLoaded() {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        let date = date ?? "No date today"
        view?.showDate(date: date)
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "No weather today"
        view?.showWeather(weather:temperature)
    }
    
    func didTapImageButton() {
        let temperature = interactor.temperature
        router.openImage(for: temperature)
    }
    
    
}
