//
//  ContentView.swift
//  Immortal
//
//  Created by Jun.Mac on 2022/09/01.
//

import SwiftUI

struct ContentView: View {
    
    @State var isContentReady : Bool = false
    
    var body: some View {
        
        ZStack{
            
           HomeView()
            
            if !isContentReady {
                Color.PrimaryColor.ignoresSafeArea(.all)
                
                LottieView(jsonName: "HairLoss")
                    .transition(.opacity)
                    .frame(width: 100)
                
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
                withAnimation{isContentReady.toggle()}
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
