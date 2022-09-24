//
//  CardTransition.swift
//  HoneymoonApp
//
//  Created by Usha Sai Chintha on 24/09/22.
//

import SwiftUI

extension AnyTransition {
    
    // trailingBottom is used when we push cards to right of screen
  static var trailingBottom: AnyTransition {
    AnyTransition.asymmetric(
      insertion: .identity,
      removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
  }
  
    // leadingBottom is used when we push cards to left of screen
  static var leadingBottom: AnyTransition {
    AnyTransition.asymmetric(
      insertion: .identity,
      removal: AnyTransition.move(edge: .leading).combined(with: .move(edge: .bottom)))
  }
}
