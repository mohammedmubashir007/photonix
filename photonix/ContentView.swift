//
//  ContentView.swift
//  photonix
//
//  Created by Mohammed Mubashir on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    @State var openMenu:Bool = false
    
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
        }.navigationBarItems(trailing: Button(action:{
            openMenu = true
            print("triggered")
        },label: {
            Image(systemName: "ellipsis").font(.title)
        }))
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $openMenu, content:{
            ZStack{
                
                Color.white.opacity(0).edgesIgnoringSafeArea(.all)
                VStack(spacing: 30){
                    Text("").padding(30)
                    Button("About", action:{
                        openMenu.toggle()
                    }).font(.title)
                    Button("App Icon", action:{
                        openMenu.toggle()
                    }).font(.title)
                    Button("License Agreement", action:{
                        openMenu.toggle()
                    }).font(.title)
                    Button("Privacy Policy", action:{
                        openMenu.toggle()
                    }).font(.title)
                    Spacer()
                    Text("App Version 1.0").font(.subheadline).padding(20)
                }
            }.background(BackgroundBlurView())
        }
        )
    }
    
}


struct BackgroundBlurView:UIViewRepresentable{
    func makeUIView(context:Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
