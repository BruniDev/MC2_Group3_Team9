//
//  MovieDetailManager.swift
//  mc2_git
//
//  Created by Youngbin Choi on 2023/05/10.
//

import Foundation
import SwiftSoup

class MovieDetailManager {
    
    var movieDetailData: MovieDetailData? = nil
    var title : String = ""
    var engTitle: String = ""
    var poster: String = ""
    var rating: String = ""
    var releasedDate: String = ""
    var genre: String = ""
    var runningTime : String = ""
    var overView : String = ""
    var director: String = ""
    var cast: String = ""
    
    
    func fetchDetail(movieCode: String) -> MovieDetailData?{
        let urlAddress = "https://www.dtryx.com/movie/view.do?cgid=FE8EF4D2-F22D-4802-A39A-D58F23A29C1E&MovieCd=\(movieCode)"
        guard let url = URL(string: urlAddress) else{
            return nil }
        
        do {
            let html = try String(contentsOf: url, encoding: .utf8)
            let doc: Document = try SwiftSoup.parse(html)
            
            title = try doc.select("div.info-box").select("h3.h3").first()!.text()
            engTitle = try doc.select("div.info-box").select("h4.h4").first()!.text()
            poster = try doc.select("div.info-box").select("div.poster").select("img").first()!.attr("src")
            let etc : Elements = try doc.select("div.info-box").select("div.etc").select("span")
            let tempRating = try etc.array()[0].text()
            let rateStartIndex = tempRating.index(tempRating.startIndex, offsetBy: 0)
            let rateEndIndex = tempRating.index(tempRating.startIndex, offsetBy: 2)
            rating = String(tempRating[rateStartIndex ..< rateEndIndex])
            if rating == "전체" {
                rating = "ALL"
            }
            
            let tempReleasedDate = try etc.array()[1].text()
            print("<<<<<<<<<<<\(tempReleasedDate)>>>>>>>>>>") // YYYY.MM.DD 형식이 아닌 5월중의 경우 예외 처리
            if tempReleasedDate.count == 10
            {
                let dateStartIndex = tempReleasedDate.index(tempReleasedDate.startIndex, offsetBy: 0)
                let dateEndIndex = tempReleasedDate.index(tempReleasedDate.startIndex, offsetBy: 4)
                releasedDate = String(tempReleasedDate[dateStartIndex ..< dateEndIndex])
            }
            else {
                releasedDate = tempReleasedDate
            }
//            let dateStartIndex = tempReleasedDate.index(tempReleasedDate.startIndex, offsetBy: 0)
//            let dateEndIndex = tempReleasedDate.index(tempReleasedDate.startIndex, offsetBy: 4)
//            releasedDate = String(tempReleasedDate[dateStartIndex ..< dateEndIndex])
            genre = try etc.array()[2].text()
            runningTime = try etc.array()[3].text()
            let overViewLink : Elements = try doc.select("div.info2").select("div.txt").select("span")
            var tempOverView : String = ""
            for element in overViewLink.array(){
                tempOverView += "\n"
                tempOverView += try element.text()
            }
            if tempOverView.count > 2 {
                let tempOverView2 = tempOverView[tempOverView.index(tempOverView.startIndex, offsetBy: 1) ..< tempOverView.endIndex ]
                self.overView = String(tempOverView2)
            }
            let peopleLink : Elements = try doc.select("div.info2").select("div.txt").select("dd")
            director = try peopleLink.array()[0].text()
            cast = try peopleLink.array()[1].text()
                    
            
        }catch let error {
            print("Error : \(error)")
        }
        return MovieDetailData(title: title, engTitle: engTitle, poster: poster, releasedDate: releasedDate, overView: overView, director: director, cast: cast, genre: genre, runningTime: runningTime, rating: rating)
    }
}
