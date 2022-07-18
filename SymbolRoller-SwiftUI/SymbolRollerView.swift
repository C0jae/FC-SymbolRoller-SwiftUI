//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .padding()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Button {
                imageName = symbols.randomElement()!
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                        .font(.system(size: 30, weight: .bold, design: .default))
                    
                    VStack {
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Text("Click me to reload")
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
            .foregroundColor(.white)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
