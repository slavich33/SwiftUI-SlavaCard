//
//  ContentView.swift
//  SlavaCard
//
//  Created by Slava on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 1.00, green: 0.42, blue: 0.51, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Slava").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Slava Chu")
                    .font(Font.custom("Pacifico-Regular", size: 40
                    ))
                    .bold()
                    .foregroundColor(.white)
                Text("Ios Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                    InfoView(text: "+7 994 422 75 71", imageName: "phone.fill")
                InfoView(text: "SlavaChu@icloud.com", imageName: "envelope.fill")

                
            }
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 11")
    }
}


