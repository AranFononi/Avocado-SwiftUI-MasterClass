//
//  AppView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Tab("Avocados", image: "tabicon-branch") {
                AvocadosView()
            } //: Avocados Tab
            
            Tab("Recipes", image: "tabicon-book") {
                ContentView()
            } //: Content Tab
            
            Tab("Ripening", image: "tabicon-avocado") {
                RipeningStageView()
            } //: Ripening Tab
            
            Tab("Settings", image: "tabicon-settings") {
                SettingsView()
            } //: Ripening Tab
            
        } //: TabView
        .tint(.primary)
    }
}

#Preview {
    AppView()
}
