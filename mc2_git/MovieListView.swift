//
//  MovieListView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/06.
//

import SwiftUI

struct MovieListView: View {
    
    let categoryName: String
    @Binding var isShowingPopup: Bool
    
    var body: some View {
        //        ZStack {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(1..<4) { i in
                    //                        GeometryReader { proxy in
                    //                            let scale = getScale(proxy: proxy)
                    VStack(alignment: .leading, spacing: 8) {
                        Image("Life_of_Hae-Oak")
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .frame(width: 200, height: 300)
                            .onTapGesture {
                                isShowingPopup = true
                            }
                        Text("영화제목")
                            .font(.system(size: 15, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        Text("영화시간")
                            .font(.system(size: 10, weight: .semibold))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                    }//Mark: - END VStack
                    //                            .scaleEffect(.init(width: scale, height: scale))
                    //                            .padding(.vertical)
                } //Mark: - END ForEach
                .frame(width: 188, height: 330)
                .padding(.leading, 20)
            } //Mark: - END HStack
        }//Mark: - END ScrollView
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
        MovieListView(categoryName: "Top Movies", isShowingPopup: .constant(false))
    }
}

