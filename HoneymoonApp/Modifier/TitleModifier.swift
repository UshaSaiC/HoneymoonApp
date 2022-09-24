//
//  TitleModifier.swift
//  HoneymoonApp
//
//  Created by Usha Sai Chintha on 24/09/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
