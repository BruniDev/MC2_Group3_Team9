//
//  MovieListView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/06.
//

import SwiftUI

struct MovieListView: View {
    
    let categoryName: String
//    @State private var isShowingPopup = false
    
    var body: some View {
        
//        ZStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(1..<4) { i in
                        GeometryReader { proxy in
                            let scale = getScale(proxy: proxy)
                            VStack(spacing: 8) {
                                
                                Image("post1")
                                    .resizable()
                                    .scaledToFill()
                                    .clipped().cornerRadius(8)
//                                    .onTapGesture {
//                                        isShowingPopup = true
//                                    }
                                
//                                Button(action: { isShowingPopup.toggle() }) {
//                                    Image("post1")
//                                        .resizable()
//                                        .scaledToFill()
//                                        .clipped().cornerRadius(8)
//                                }
//                                


                                Text("happy together")
                                    .font(.system(size: 16, weight: .semibold))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                            .scaleEffect(.init(width: scale, height: scale))
                            .padding(.vertical)
                        } //Mark: - End Geometry
                        .frame(width: 150, height: 300)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 32)
                    } //Mark: - End ForEach
                    Spacer()
                        .frame(width: 16)
                }//Mark: - End HStack
            }//Mark: - End ScrollView
//            .overlay(
//                if isShowingPopup {
//                    ZStack {
//                        Color.black.opacity(0.5).ignoresSafeArea()
//                        CustomAlertView()
//                    }
//                }
//        )
        
        
//            .overlay(
//            if isShowingPopup {
//                ZStack {
//                    Color.black.opacity(0.5).ignoresSafeArea()
//                    CustomAlertView()
//                }
////                CustomAlertView(isDisplayed: $isPopupDisplayed)
////        }//Mark: - End ZStack
////        .fullScreenCover(isPresented: $showPopup, content: {
////            CustomAlertView()
//        }
//            ).onTapGesture {
//                isShowingPopup = true
            }
        

        }
        
func getScale(proxy: GeometryProxy) -> CGFloat {
    let midPoint: CGFloat = 125
    let viewFrame = proxy.frame(in: CoordinateSpace.global)
    var scale: CGFloat = 1.0
    let deltaXAnimationThreshold: CGFloat = 125
    
    let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
    if diffFromCenter < deltaXAnimationThreshold {
        scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
    }
    return scale
    }


struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(categoryName: "Top Movies")
    }
}
