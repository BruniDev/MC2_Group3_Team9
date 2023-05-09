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
                HStack(alignment: .top) {
                    ForEach(1..<4) { i in
//                        GeometryReader { proxy in
//                            let scale = getScale(proxy: proxy)
                            VStack(alignment: .leading, spacing: 8) {
                                
                                Image("post1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                                    .cornerRadius(8)
                                    .frame(width: 188, height: 265)
//                                    .background(Color.red)
//                                    .padding(.trailing, -20)
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


                                Text("영화제목")
                                    .font(.system(size: 10, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                                Text("영화시간")
                                    .font(.system(size: 10, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                            }
//                            .scaleEffect(.init(width: scale, height: scale))
//                            .padding(.vertical)
//                            .background(Color.red)
                        } //Mark: - End Geometry
                        .frame(width: 188, height: 330)
//                        .padding(.horizontal, 20)
//                        .padding(.vertical, 32)
                        .padding(.leading, 20)
//                        .background(Color.green)
//                        .background(Color.red)
//                        .background(Color.red)
                    } //Mark: - End ForEach
//                .background(Color.purple)
//                    Spacer()
//                        .frame(width: 16)
                }//Mark: - End HStack
//            .padding(.horizontal, 8)
//            .background(Color.orange)
//                .padding(.vertical)
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

