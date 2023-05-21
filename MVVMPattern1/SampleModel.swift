//
//  SampleModel.swift
//  MVVMPattern1
//
//  Created by 村中令 on 2023/05/21.
//

import Foundation

struct SampleModel {
    var count: Int = 0
    var stars: String = "★"

    mutating func changeStarsLength(_ len: Int) {
        self.stars = [String](repeating: "★", count: len).joined()
    }
}
