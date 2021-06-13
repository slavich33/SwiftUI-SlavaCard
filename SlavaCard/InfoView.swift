//
//  InfoView.swift
//  SlavaCard
//
//  Created by Slava on 10.03.2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.init(red: 1.00, green: 0.42, blue: 0.51))
                Text(text)
                    //This line below is required if you want the app to display correctly in dark mode.
                        //In dark mode all Text is automatically rendered as white.
                        //So we've created a custom color in the assets folder called Infor Color and used it here.
                    .foregroundColor(Color("Info Color"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Wasap", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        
    }
}
