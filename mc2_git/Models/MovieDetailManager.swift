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
    
    func fetchDetail(movieCode: String){
        let urlAddress = "https://www.dtryx.com/movie/view.do?cgid=FE8EF4D2-F22D-4802-A39A-D58F23A29C1E&MovieCd=\(movieCode)"
        guard let url = URL(string: urlAddress) else{
            return }
        do {
            let html = try String(contentsOf: url, encoding: .utf8)
            let doc: Document = try SwiftSoup.parse(html)
            
            let title : String = try doc.select("div.info-box").select("h3.h3").first()!.text()
            let engTitile : String = try doc.select("div.info-box").select("h4.h4").first()!.text()
            let poster : String = try doc.select("div.info-box").select("div.poster").select("img").first()!.attr("src")
            let etc : Elements = try doc.select("div.info-box").select("div.etc").select("span")
            let rating : String = try etc.array()[0].text()
            let releasedDate : String = try etc.array()[1].text()
            let genre : String = try etc.array()[2].text()
            let runningTime  : String = try etc.array()[3].text()
            let overViewLink : Elements = try doc.select("div.info2").select("div.txt").select("span")
            var tempOverView : String = ""
            var overView : String = ""
            for element in overViewLink.array(){
                tempOverView += "\n"
                tempOverView += try element.text()
            }
            if tempOverView.count > 2 {
                let tempOverView2 = tempOverView[tempOverView.index(tempOverView.startIndex, offsetBy: 1) ..< tempOverView.endIndex ]
                overView = String(tempOverView2)
            }
            let peopleLink : Elements = try doc.select("div.info2").select("div.txt").select("dd")
            let director : String = try peopleLink.array()[0].text()
            let cast : String = try peopleLink.array()[1].text()
            
            
            print(title)
            print(engTitile)
            print(poster)
            print(rating)
            print(releasedDate)
            print(genre)
            print(runningTime)
            print(overView)
            print(director)
            print(cast)
                    
            
        }catch let error {
            print("Error : \(error)")
        }
    }
}
