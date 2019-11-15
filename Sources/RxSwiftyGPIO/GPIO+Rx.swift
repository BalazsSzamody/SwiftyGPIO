//
//  GPIO+Rx.swift
//  
//
//  Created by Balazs Szamody on 14/10/19.
//

import Foundation
import RxSwift
import SwiftyGPIO

public extension GPIO {
    func onFalling() -> Observable<GPIO> {
        return Observable.create {[weak self] (observable) -> Disposable in
            self?.onFalling({ (gpio) in
                observable.onNext(gpio)
            })
            
            return Disposables.create()
        }
    }
}

//extension Observable {
//    static func observeClosure(closure: (@escaping (Element) -> Void)) -> Observable<Element> {
//        return create { (observable) -> Disposable in
//            closure({ element in
//                observable.onNext(element)
//            })
//            
//            return Disposables.create()
//        }
//    }
//}
