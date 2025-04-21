//
//  ContentView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        HeaderView()
                    } //: HStack
                } //: Scroll
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.colorGreenAdaptive)
                        .padding(8)
                    Text("Everything you wanted to know about avocados, but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                        .padding(8)
                } //: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VStack
        } //: ScrollView
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    ContentView()
}
