//
//  SamlpleModel.swift
//  MVVMPattern1
//
//  Created by 村中令 on 2023/05/21.
//

import Foundation

@MainActor
class SampleViewModel: ObservableObject {
    @Published var model: SampleModel

    init(model: SampleModel) {
        self.model = model
    }

    var count: Int {
        get {
            return model.count
        }
        set {
            model.count = newValue
        }
    }

    // 子ViewでBindingするためにはsetterが必要
    var stars: String {
        get {
            return model.stars
        }
        set {
            model.stars = newValue
        }
    }

    func changeStarsLength(_ len: Int) {
        model.changeStarsLength(len)
    }
}
