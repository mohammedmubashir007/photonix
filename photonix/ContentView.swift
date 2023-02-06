//
//  ContentView.swift
//  photonix
//
//  Created by Mohammed Mubashir on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    
    init(){
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first!.overrideUserInterfaceStyle = .dark
    }
    
    var body: some View {
        GeometryReader{geo in
            
            ScrollView {
                
                LazyVGrid(columns: columns) {
                    ForEach(1...10,id: \.self) {i in
                        Color.orange.frame(width: geo.size.width/2, height: geo.size.height/2)
                    }
                }
                
         
        HStack {
            VStack {
                Text("50 Soap bubbles").foregroundColor(.white).font(.title2)
                
                Text("See what's coming in next update").foregroundColor(.white)
                Link("Subscribe Me on Youtube :)", destination: URL(string: "https://www.youtube.com/@mohammedmubashir/videos")!).foregroundColor(.blue)
                
            }
        }
        
    }
        }.navigationBarBackButtonHidden()
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
