//
//  SettingsView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparent, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenAdaptive)
            } //: VStack
            .padding()
            
            Form {
                // MARK: - Section 1
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                } header: {
                    Text("General Settings")
                } //: Section
                
                // MARK: - Section 2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundStyle(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        } //: HStack
                        HStack {
                            Text("Compatibility").foregroundStyle(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        } //: HStack
                        
                        HStack {
                            Text("Developer").foregroundStyle(.gray)
                            Spacer()
                            Text("Aran Fononi")
                        } //: HStack
                        
                        HStack {
                            Text("Designer").foregroundStyle(.gray)
                            Spacer()
                            Text("Robert Petras")
                        } //: HStack
                        
                        HStack {
                            Text("Website").foregroundStyle(.gray)
                            Spacer()
                            Link("Github", destination: URL(string: "Github.com/AranFononi")!)
                                .foregroundStyle(.primary)
                                .underline(true)
                                .fontWeight(.bold)
                        } //: HStack
                        
                        HStack {
                            Text("Version").foregroundStyle(.gray)
                            Spacer()
                            Text("1.0.0")
                        } //: HStack
                    } else {
                        HStack {
                            Text("Personal Message").foregroundStyle(.gray)
                            Spacer()
                            Text("Happy Coding")
                        } //: HStack
                    } //: Condition
                    
                    
                } header: {
                    Text("Application")
                } //: Section
                
            } //: Form
        } //: VStack
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
