//
//  Feature page.swift
//  start
//
//  Created by 刘骐铭 on 3/8/24.
//

import SwiftUI

struct FeaturesCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        
        HStack {
            Text("Features")
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
            
            Spacer()
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        .foregroundStyle(.white)
    }
}

#Preview {
    FeaturesCard(iconName: "person.2.crop.square.stack.fill", description: "card in Feature card file")
}

