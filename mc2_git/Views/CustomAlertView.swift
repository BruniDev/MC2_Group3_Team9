import SwiftUI

struct CustomAlertView: View {
    
    @Binding var isShowingPopup : Bool
    @Binding var movieDetailData : MovieDetailData

    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 0) {
                
                //Mark: - 영화 포스터 이미지

                AsyncImage(url: URL(string:movieDetailData.poster)) { img in
                    img
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    Color.white
                }
                .frame(width: 284, height: 407)
                .padding(.top, 65)
                .shadow(color: .gray, radius: 3, y: 4)
                .overlay(Circle()
                    .foregroundColor(.black.opacity(0.5))
                    .frame(width: 40)
                    .padding(.top, 80)
                    .padding(.trailing, 15)
                    .overlay(Text(movieDetailData.rating)
                        .font(.system(size: 22))
                        .padding(.top, 87)
                        .padding(.trailing, 24)
                        .foregroundColor(.yellow.opacity(0.5))
                             ,alignment: .topTrailing
                    )
                         ,alignment: .topTrailing
                )
//                Image("Life_of_Hae-Oak")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 284, height: 407)
//                    .padding(.top, 65)
//                    .shadow(color: .gray, radius: 3, y: 4)
//                    .overlay(Circle()
//                        .foregroundColor(.black.opacity(0.5))
//                        .frame(width: 40)
//                        .padding(.top, 80)
//                        .padding(.trailing, 15)
//                        .overlay(Text(movieDetailData.rating)
//                            .font(.system(size: 22))
//                            .padding(.top, 87)
//                            .padding(.trailing, 24)
//                            .foregroundColor(.yellow.opacity(0.5))
//                                 ,alignment: .topTrailing
//                        )
//                             ,alignment: .topTrailing
//                    )
                
                //Mark: - 포스터 이미지 아래 영화 정보 전체
                HStack(alignment: .bottom) {
                    Text(movieDetailData.title)
                        .font(.system(size: 28))
                        .padding(.leading, 34)
                        .bold()
                    Text(movieDetailData.releasedDate)
                        .font(.system(size: 11))
                    Spacer()
                }
                .padding(.top, 12)
                .padding(.trailing, 30)
         
                
                Text(movieDetailData.overView)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 11)
                    .font(.system(size: 11))
                    .padding(.horizontal, 34)
                    .lineSpacing(1)
                    
                //Mark: - Movie Information(감독, 출연, 장르, 러닝타임
                VStack(spacing: 4) {
                    movieInfo(title: "감 독", content: movieDetailData.director)
                    movieInfo(title: "출 연", content: movieDetailData.cast)
                    movieInfo(title: "장 르", content: movieDetailData.genre)
                    movieInfo(title: "러닝타임", content: movieDetailData.runningTime)
                }
                .padding(.top, 20)
                .padding(.leading, 34)
                .padding(.trailing,34)
                .padding(.bottom, 34)
                
                
            }
            
            VStack {
                HStack {
                    Button(action: {
                        isShowingPopup = false
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.black.opacity(0.8))
                            .padding(.top, 12)
                            .padding(.leading, 12)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func movieInfo(title: String, content: String) -> some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 54, height: 22)
                .overlay(Text(title)
                    .font(.system(size: 12))
                    .bold()
                    .foregroundColor(Color.white))
            Text(content)
                .font(.system(size: 12))
            Spacer()
        }
    }
}
