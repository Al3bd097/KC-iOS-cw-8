//
//  SecondView.swift
//  My Diary
//
//  Created by Max will on 8/20/22.
//

import SwiftUI

struct SecondView: View {
    @State var myC: Color = Color.indigo
    @State var Myn: String = "Hello"
    var body: some View {
        
        ZStack {
            myC.ignoresSafeArea()
            VStack {
                Text("\(Myn)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .padding(9)
                    .background(.gray)
                    .cornerRadius(24)
            }
        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
