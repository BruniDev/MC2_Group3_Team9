import SwiftUI

struct CustomAlertView: View {
    
    @Binding var isShowingPopup : Bool
    
    let posterWidth: CGFloat = 0.8
    let closeButtonPadding: CGFloat = 0.02
    
    var body: some View {
        HStack {
            
            GeometryReader { geometry in
                
                let posterSize = geometry.size.width * posterWidth
                let closeButtonPaddingSize = posterSize
                
                VStack {
                    
                    //Mark: - 왼쪽 위 닫기 버튼
                    HStack {
                        Button(action: {
                            isShowingPopup = false
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.black.opacity(0.8))
                                .padding(.leading, geometry.size.width * closeButtonPadding)
                            Spacer()
                        }
                    }
                    
                    //Mark: - 영화 포스터 이미지
                    Image("Life_of_Hae-Oak")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * posterWidth)
                        .shadow(color: .gray, radius: 3, y:10)
                        .overlay(Circle()
                            .foregroundColor(.black.opacity(0.5))
                            .frame(width: geometry.size.width * 0.1)
                            .padding(.vertical, geometry.size.width * 0.01)
                            .padding(.horizontal, geometry.size.height * 0.02)
                            .overlay(Text("15")
                                .frame(width: geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.width * 0.01)
                                .padding(.horizontal, geometry.size.height * 0.02)
                                .foregroundColor(.yellow.opacity(0.5)))
                                 ,alignment: .topTrailing
                        )
                    
                    //Mark: - 포스터 이미지 아래 영화 정보 전체
                    HStack(alignment: .bottom) {
                        Text("영화제목")
                            .font(.largeTitle)
                            .bold()
                        Text("영화년도")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.leading, geometry.size.width * 0.08)
                    Text("영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다.")
                        .font(.footnote)
                        .padding(.horizontal, geometry.size.width * 0.065)
                    
                    //Mark: - Movie Information(감독, 출연, 장르, 러닝타임
                    VStack(alignment: .leading) {
                        movieInfo(title: "감 독", content: "이우정", geometry: geometry)
                        movieInfo(title: "출 연", content: "이우정, 이우정, 이우정", geometry: geometry)
                        movieInfo(title: "장 르", content: "드라마", geometry: geometry)
                        movieInfo(title: "러닝타임", content: "109분", geometry: geometry)
                    }
                    .padding(.leading, geometry.size.width * 0.08)
                }
                .padding(.horizontal, geometry.size.width * 0.02)
                .padding(.vertical, geometry.size.height * 0.02)
            }
        }
    }
    
    func movieInfo(title: String, content: String, geometry: GeometryProxy) -> some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 60, height: 25)
                .overlay(Text(title)
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white))
            Text(content)
                .font(.caption)
            Spacer()
        }
    }
}
