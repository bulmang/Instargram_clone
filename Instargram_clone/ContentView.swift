//
//  ContentView.swift
//  Instargram_clone
//
//  Created by 하명관 on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        LoginView()
            .overlay(IntroView().edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

