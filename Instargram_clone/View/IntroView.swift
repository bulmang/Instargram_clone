//
//  IntroView.swift
//  Instargram_clone
//
//  Created by 하명관 on 2023/03/17.
//

import SwiftUI

struct IntroView: View {
    
    @State var isFinished: Bool = false
    
    var body: some View {
        
        
        if isFinished == false {
            VStack(spacing: 0){
                
                Spacer()
                
                Image("instargramLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                
                Spacer()
                
                Text("from")
                
                Image("pinkMetaLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100,height: 70)
                    .padding(.horizontal,200)
                
            }
            .background(Color.white)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    withAnimation {
                        isFinished.toggle()
                    }
                }
            }
        }
    }
    
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

