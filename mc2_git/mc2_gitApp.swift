//
//  mc2_gitApp.swift
//  mc2_git
//
//  Created by 차차 on 2023/05/13.
//

import SwiftUI

@main
struct mc2_gitApp: App {
    @State var loadingNum : Int = 1
    var body: some Scene {
        WindowGroup {
            ContentView(loadingNum: $loadingNum)
        }
    }
}
