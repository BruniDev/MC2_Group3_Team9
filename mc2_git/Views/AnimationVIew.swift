//
//  AnimationVIew.swift
//  mc2_git
//
//  Created by 차차 on 2023/05/15.
//

import Foundation
import SwiftUI

struct AnimationView : View {
    @State var biggestCircle = false
    @State var biggerCircle = false
    @State var circle = true
    
    var body: some View {
        VStack(alignment: .trailing) {
            ZStack {
                if biggestCircle {
                    Circle()
                        .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                        .frame(width: 75, height: 75)
                        .opacity(0.25)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                biggestCircle.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                biggerCircle.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                                biggerCircle.toggle()
                            }
                        }
                }
                
                if biggerCircle {
                    Circle()
                        .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                        .frame(width: 50, height: 50)
                        .opacity(0.6)
                        .animation(.default, value: biggerCircle)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                biggestCircle.toggle()
                            }
                        }
                }
                if circle {
                    Circle()
                        .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                        .frame(width: 25, height: 25)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                biggerCircle.toggle()
                            }
                        }
                }
            }
            .frame(width: 75, height: 75)
            
            Text("찾는 중 ・・・")
                .font(.system(size: 17)) // , weight: .semibold
                .foregroundColor(Color(hex:"5856D6"))
        }
    }
}
