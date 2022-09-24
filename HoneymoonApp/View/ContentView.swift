//
//  ContentView.swift
//  HoneymoonApp
//
//  Created by Usha Sai Chintha on 24/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    var cardViews: [CardView] = {
      var views = [CardView]()
      for honeymoon in honeymoonData {
        views.append(CardView(honeymoon: honeymoon))
      }
      return views
    }()
    
    private func isTopCard(cardView: CardView) -> Bool {
      guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {
        return false
      }
      return index == 0
    }
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            ZStack{
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
          Alert(
            title: Text("SUCCESS"),
            message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
            dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
