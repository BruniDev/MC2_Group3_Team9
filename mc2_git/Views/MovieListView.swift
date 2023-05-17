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
    @Binding var isShowingPopup: Bool
    @Binding var movieDetailData: MovieDetailData
    @Binding var scrollToTop: Bool
    
    var body: some View {
        ScrollViewReader{ scrollViewProxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(0..<movieScheduleDataForUser.count, id:\.self) { index in
                        VStack(alignment: .leading, spacing: 8) {
                            Button {
                                movieDetailData = movieDetailManager.fetchDetail(movieCode: movieScheduleDataForUser[index].movieCode)!
                                isShowingPopup = true
                            } label: {
                                AsyncImage(url: URL(string: "\(movieScheduleDataForUser[index].movieIMG)")) { img in
                                    img
                                        .resizable()
                                        .scaledToFit()
                                } placeholder: {
                                    Color.white
                                }
                                .frame(width: 210, height: 300)
                                .animation(.easeIn)
                            }
                            Text("\(movieScheduleDataForUser[index].movieName)")
                                .font(.system(size: 17, weight: .semibold))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.black)
                            HStack {
                                ForEach(0 ..< movieScheduleDataForUser[index].movieTimeTable.count, id: \.self) { i in
                                    Text(movieScheduleDataForUser[index].movieTimeTable[i])
                                        .font(.system(size: 12))
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.black)
                                }
                            }
                            
                        }
                    } //Mark: - End Geometry
                    .frame(width: 210, height: 360)
                    .padding(.leading, 20)
                    .padding(.top, -10)
                    .onChange(of: scrollToTop) { newValue in
                        if newValue {
                            withAnimation{
                                scrollViewProxy.scrollTo(0, anchor: .top)
                                scrollToTop = false
                            }
                        }
                    }
                } //Mark: - End ForEach
            }//Mark: - End HStack
        }//Mark: - End ScrollView
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

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView(movieScheduleDataForUser: .constant([]), categoryName: "Top Movies", isShowingPopup: .constant(false))
//    }
//}
//
