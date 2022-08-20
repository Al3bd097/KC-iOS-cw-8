//
//  ContentView.swift
//  My Diary
//
//  Created by Max will on 8/20/22.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.yellow, Color.orange, Color.blue, Color.green]
    @State var name = "You haven't wrote anything..."
    @State var selected: Color = Color.green
    var body: some View {
        NavigationView{
            ZStack{
                Image("blue")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("Pick your favourite color")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium, design: .serif))
                        .padding()
                    HStack {
                        ForEach(colors, id: \.self){ color in
                            Circle().fill(color)
                                .frame(width: 70, height: 70)
                                .onTapGesture {
                                    selected = color
                                }
                        }
                    }
                    Text("What do you want to write")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .medium, design: .serif))
                        .padding()
                    TextField("Type Here", text: $name)
                        .padding()
                        .background(.white.opacity(0.6))
                        .cornerRadius(25)
                        .padding()
                    NavigationLink(destination: SecondView(myC: selected, Myn: name)) {
                        Text("Save")
                            .padding()
                            .background(.white.opacity(0.7))
                            .cornerRadius(25)
                    }
                }
            }
            .navigationTitle(Text("دفتر اليوميات"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
