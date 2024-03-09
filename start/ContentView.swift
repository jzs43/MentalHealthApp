
import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct contentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
//    @State private var numberOfDice: Int=1
    
    var body: some View {
        VStack {
            Text(pickedName.isEmpty ? " " : pickedName)
            
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)
                    
                }
            }
            
            Button("Pick Random Name") {
                if names.count > 0 {
                    pickedName = names.randomElement()!
                } else {
                    pickedName = ""
                }
            }
        }
        .padding()
//        VStack {
//            Text("Dice Roller")
//                .font(.largeTitle.lowercaseSmallCaps())
//            HStack {
//                ForEach(1...numberOfDice, id: \.self) { _ in
//                    DiceView()
//                }
//                
//            HStack {
//                Button("Remove Dice") {
//                    numberOfDice -= 1
//                }
//                .disabled(numberOfDice == 1)
//                
//                Button("Add Dice") {
//                    numberOfDice += 1
//                }
//                .disabled(numberOfDice == 3)
//                }
//            .padding()
//            }
//        }
//        .padding()
//        TabView {
//            WelcomePage()
//            FeaturesPage()
//        }
//        .background(Gradient(colors: gradientColors))
//        .tabViewStyle(.page)
//        .foregroundColor(.white)
    }
}

#Preview {
    contentView()
}
