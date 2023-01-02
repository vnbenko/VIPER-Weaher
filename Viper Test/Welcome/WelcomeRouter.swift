//
//  WelcomeRouter.swift
//  Viper Test
//
//  Created by Vladimir Benko on 31.12.22.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class WelcomeRouter: WelcomeRouterProtocol {
    
    //презентер ссылается на роутер сильной ссылкой, а роутер на презентер слабой
    weak var viewController: ViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true, completion: nil)
    }
}
