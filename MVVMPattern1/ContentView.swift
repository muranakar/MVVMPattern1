//
//  ContentView.swift
//  MVVMPattern1
//
//  Created by 村中令 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SampleView(viewModel: SampleViewModel(model: SampleModel()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
