//
//  WalkingView.swift
//  mc2_git
//
//  Created by Youngbin Choi on 2023/05/18.
//

import Foundation
import SwiftUI


struct WalkingView : View {
    @State private var currentIndex = 0
    @State private var showWalk = true
    @State private var showRun = false
    @State private var showWalk1 = false
//    @State private var showRun1 = false
//    @State private var showWalk2 = false
//    @State private var showRun2 = false
    
    let images: [String] = ["figure.run", "figure.walk", "figure.run"]
    
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    func startAnimating() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
               withAnimation {
                   currentIndex = (currentIndex + 1) % images.count
               }
           }
       }
    var body : some View {
        HStack(spacing: 20) {
            ForEach(0..<images.count) { index in
                Image(systemName: images[index])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                    .opacity(index == currentIndex ? 1 : 0)
                    .animation(.easeIn(duration: 0.5))
            }
        }
        .onAppear {
            startAnimating()
        }
    }
}
