//
//  RipeningStageView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct RipeningStageView: View {
    var ripeningStages : [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { ripening in
                        RipeningView(ripening: ripening)
                    } //: Loop
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
                
            } //: VStack
        } //: Scroll
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RipeningStageView()
}
