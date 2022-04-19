//
//  MainView.swift
//  kWordle
//
//  Created by 강희영 on 2022/04/15.
//

import SwiftUI

struct MainView: View {
//    @ObservedObject var answerBoardViewModel: AnswerBoardViewModel = AnswerBoardViewModel()
    @ObservedObject var mainViewModel: MainViewModel = MainViewModel()
    
    let wordDictManager = WordDictManager()
    var body: some View {
        VStack {
            TitleView()
            AnswerBoardView()
            KeyboardView()
        }
        .environmentObject(mainViewModel.keyboardViewModel)
        .environmentObject(mainViewModel)
        .onAppear {
            for family: String in UIFont.familyNames {
                            print(family)
                            for names : String in UIFont.fontNames(forFamilyName: family){
                                print("=== \(names)")
                            }
                        }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
