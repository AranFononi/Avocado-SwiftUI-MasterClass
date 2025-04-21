//
//  RipeningView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct RipeningView: View {
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image("avocado-ripening-1")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55 )
            
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 0) {
                    Text("1")
                        .font(.system(.largeTitle, design: .serif))
                    Text("Stage")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                } //: Vstack
                .foregroundStyle(.colorGreenMedium)
                .padding(.top, 65)
                .frame(width: 180)
                
                Text("Hard")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(colors: [.white, .colorGreenLight], startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: .colorBlackTransparent, radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                
                Text("Description")
                    .foregroundStyle(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                
                Spacer()
                
                Text("5+ Days")
                    .foregroundStyle(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(colors: [.colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: .colorBlackTransparent, radius: 6, x: 0, y: 6)
                    )
                
                Text("Instructions")
                    .font(.footnote)
                    .foregroundStyle(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
            } //: VStack
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(.rect(cornerRadius: 20))
        } //: VStack
        .ignoresSafeArea(.all)
        .onAppear {
            slideInAnimation.toggle()
        }
    }
}

#Preview {
    RipeningView()
}
