//
//  MovieListView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/06.
//

import SwiftUI

struct MovieListView: View {
    
    var movieDetailManager = MovieDetailManager()
    @Binding var movieScheduleDataForUser: Array<MovieScheduleDataForUser>
    let categoryName: String
    //    @State private var isShowingPopup = false
    
    var body: some View {
        //        ZStack {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(0..<movieScheduleDataForUser.count, id:\.self) { index in
                    //                        GeometryReader { proxy in
                    //                            let scale = getScale(proxy: proxy)
                    VStack(alignment: .leading, spacing: 8) {
                        Button {
                            movieDetailManager.fetchDetail(movieCode: movieScheduleDataForUser[index].movieCode)
                        } label: {
                            AsyncImage(url: URL(string: "\(movieScheduleDataForUser[index].movieIMG)")) { img in
                                img
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                Color.white
                            }
                            .cornerRadius(8)
                            .frame(height: 265)
                            .animation(.easeIn)
                        }
                        Text("\(movieScheduleDataForUser[index].movieName)")
                            .font(.system(size: 10, weight: .semibold))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                        HStack {
                            ForEach(0 ..< movieScheduleDataForUser[index].movieTimeTable.count, id: \.self) { i in
                                Text(movieScheduleDataForUser[index].movieTimeTable[i])
                                    .font(.system(size: 10, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                            }
                        }

                    }
                } //Mark: - End Geometry
                .frame(width: 188, height: 330)
                .padding(.leading, 20)
            } //Mark: - End ForEach
        }//Mark: - End HStack
    }//Mark: - End ScrollView
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
        MovieListView(movieScheduleDataForUser: .constant([]), categoryName: "Top Movies")
    }
}

