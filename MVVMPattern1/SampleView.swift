//
//  SampleView.swift
//  MVVMPattern1
//
//  Created by 村中令 on 2023/05/21.
//

import Foundation
import SwiftUI

struct SampleView: View {
    @ObservedObject var viewModel: SampleViewModel

    var body: some View {
        VStack(spacing: 8) {
            Text("\(viewModel.count)")
            Button("Count Up") {
                viewModel.count += 1
            }
        // $をつけて渡す
            SampleSubView(stars: $viewModel.stars) { len in
            // クロージャーで処理を渡す
                viewModel.changeStarsLength(len)
            }
        }
    }
}

struct SampleSubView: View {
    @Binding private var stars: String
    private var handler: (Int) -> Void

    init(stars: Binding<String>, action handler: @escaping (Int) -> Void) {
        self._stars = stars
        self.handler = handler  // クロージャーを保持
    }

    var body: some View {
        VStack(spacing: 8) {
            Text(stars)
            Button("Change Stars Length") {
                handler(Int.random(in: 1 ..< 10))
            }
        }
    }
}
