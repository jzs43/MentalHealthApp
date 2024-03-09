//
//  Feature card.swift
//  start
//
//  Created by 刘骐铭 on 3/8/24.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeaturesCard(iconName:"person.2.crop.square.stack.fill",description: "some person sends you a message")
            FeaturesCard(iconName:"quote.bubble.fill",description: "some person")
            .padding()
            
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
        
}

#Preview {
    FeaturesPage()
}


