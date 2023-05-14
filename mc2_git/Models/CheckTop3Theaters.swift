//
//  CheckTop3Theaters.swift
//  mc2_git
//
//  Created by 차차 on 2023/05/10.
//

import Foundation
import CoreLocation

let nameList: [String] = [
    "광주극장",
    "광주독립영화관",
    "더숲아트시네마",
    "씨네아트리좀",
    "아트하우스모모",
    "안동중앙시네마",
    "에무시네마",
    "오오극장",
    "인디플러스포항",
    "인디플러스천안",
    "인천미림극장",
    "전주디지털독립영화관",
    "판타스틱큐브",
    "필름포럼",
    "헤이리시네마",
    "씨네큐브광화문",
    "오르페오한남",
    "라이카시네마",
    "모퉁이극장",
    "씨네인디U",
    "아리랑시네센터",
    "영화공간주안",
    "KT&G상상마당시네마",
    "KU시네마테크"
]

let latitudeList : [Double] = [
    35.149793,
    35.146904,
    37.664192,
    35.205938,
    37.561342,
    36.565073,
    37.572129,
    35.870668,
    36.040895,
    36.808647,
    37.475437,
    35.818347,
    37.503474,
    37.563754,
    37.791493,
    37.569706,
    37.533965,
    37.565135,
    35.100483,
    36.320947,
    37.600234,
    37.461238,
    37.550888,
    37.542888
]

let longitudeList : [Double] = [
    126.912486,
    126.922060,
    127.066247,
    128.575802,
    126.947042,
    128.730979,
    126.969033,
    128.589413,
    129.367107,
    127.152192,
    126.634283,
    127.142540,
    126.765792,
    126.944109,
    126.699044,
    126.972269,
    127.002064,
    126.930871,
    129.030800,
    127.409955,
    127.013910,
    126.680589,
    126.921102,
    127.073069
]

class Theater {
    var name : String
    var distance : CLLocationDistance
    
    init() {
        self.name = "init"
        self.distance = CLLocationDistance()
    }
    
    init (name: String, distance: CLLocationDistance) {
        self.name = name
        self.distance = distance
    }
    
    func handleDistance() -> String {
        var toDouble = Double(distance)

        if toDouble < 1000 { // distance < 1 KM
            return String(Int(toDouble)) + " M"
        }
        else { // distance >= 1 KM
            toDouble /= 1000

            if toDouble >= 10 { // distance >= 10 KM
                return String(Int(toDouble)) + " KM"
            }
            else { // 1 KM <= distance < 10 KM
                    toDouble *= 10
                    return String(Int(toDouble) / 10) + "." + String(Int(toDouble) % 10) + " KM"
            }
        }
    }
}

func CheckTop3Theaters(location: CLLocation) -> [Theater] {
    var theaterLocation : CLLocation
    var distance : CLLocationDistance
    var theaters : [Theater] = []
    var Instance : Theater
    var top3 : [Theater] = []
    
    for i in 0...23 {
        theaterLocation = CLLocation(latitude: latitudeList[i], longitude: longitudeList[i])
        distance = location.distance(from: theaterLocation)
        Instance = Theater(name: nameList[i], distance: distance)
        theaters.insert(Instance, at: i)
    }
    
    for i in 0...22 {
        for j in  0...22 - i {
            if (theaters[j].distance > theaters[j+1].distance) {
                Instance = theaters[j]
                theaters[j] = theaters[j+1]
                theaters[j+1] = Instance
            }
        }
    }
        
    top3.insert(theaters[0], at: 0)
    top3.insert(theaters[1], at: 1)
    top3.insert(theaters[2], at: 2)
    print(theaters[1].name)
    print(theaters[2].name)
    return top3
}

