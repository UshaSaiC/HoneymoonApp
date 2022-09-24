//
//  ContentView.swift
//  HoneymoonApp
//
//  Created by Usha Sai Chintha on 24/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
