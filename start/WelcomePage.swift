//
//  WelcomePage.swift
//  start
//
//  Created by 刘骐铭 on 3/8/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.tint)
                .frame(width: 150, height: 150)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            Text("Wlecome to my app!")
                .font(Font.title)
            .fontWeight(.semibold)
            .padding(.leading)
            .padding(.top)
//            .border(.black, width: 1.5)
            
            Text("Description text")
                .font(.title2)
//                .border(.black, width: 1.5)
        }
//        .border(.orange, width: 1.5)
        .padding()
//        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
