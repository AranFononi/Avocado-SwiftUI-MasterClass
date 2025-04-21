//
//  AvocadosView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - Property
    @State private var pulsateAnimation: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: .colorBlackTransparent, radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .shadow(color: .colorBlackTransparent, radius: 4, x: 0, y: 4)
                Text("Creamy, green, and full of nutrients! \nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .font(.system(.headline, design: .serif))
                    .lineLimit(nil)
                    .foregroundStyle(.colorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
            } //: VStack
            .padding()
            
            Spacer()
        } //: VStack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
        )
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

#Preview {
    AvocadosView()
}
