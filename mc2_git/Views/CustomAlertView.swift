import SwiftUI

struct CustomAlertView: View {
    
    @Binding var isShowingPopup : Bool
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 0) {
                
                //Mark: - 영화 포스터 이미지
                Image("Life_of_Hae-Oak")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 284, height: 407)
                    .padding(.top, 65)
                    .shadow(color: .gray, radius: 3, y: 4)
                    .overlay(Circle()
                        .foregroundColor(.black.opacity(0.5))
                        .frame(width: 40)
                        .padding(.top, 80)
                        .padding(.trailing, 15)
                        .overlay(Text("15")
                            .font(.system(size: 22))
                            .padding(.top, 87)
                            .padding(.trailing, 24)
                            .foregroundColor(.yellow.opacity(0.5))
                                 ,alignment: .topTrailing
                        )
                             ,alignment: .topTrailing
                    )
                
                //Mark: - 포스터 이미지 아래 영화 정보 전체
                HStack(alignment: .bottom) {
                    Text("영화제목")
                        .font(.system(size: 28))
                        .padding(.leading, 34)
                        .bold()
                    Text("영화년도")
                        .font(.system(size: 11))
                    Spacer()
                }
                .padding(.top, 12)
                
                Text("영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다.")
                    .padding(.top, 11)
                    .font(.system(size: 11))
                    .padding(.horizontal, 34)
                    .lineSpacing(1)
                
                //Mark: - Movie Information(감독, 출연, 장르, 러닝타임
                VStack(spacing: 4) {
                    movieInfo(title: "감 독", content: "이우정")
                    movieInfo(title: "출 연", content: "이우정, 이우정, 이우정")
                    movieInfo(title: "장 르", content: "드라마")
                    movieInfo(title: "러닝타임", content: "109분")
                }
                .padding(.top, 20)
                .padding(.leading, 34)
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
