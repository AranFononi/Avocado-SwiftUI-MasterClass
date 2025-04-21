//
//  FactsView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        ZStack {
            Text("Avocado trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach maturity.")
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .leading, endPoint: .trailing)
                        .clipShape(.rect(cornerRadius: 12))
                )
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundStyle(.white)
            
            Image("avocado-fact-2")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .trailing, endPoint: .leading)
                        )
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        } //: ZStack
    }
}

#Preview {
    FactsView()
}
