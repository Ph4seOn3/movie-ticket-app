//
//  CustomTabBar.swift
//  movie ticket app
//
//  Created by Jeff Korzeniowski on 12/4/22.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var currentTab: Tab
    
    var body: some View {
        HStack(spacing: 0.0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Image(tab.rawValue)
            }
        }
        .frame(maxWidth: .infinity)
        .background(.red)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(currentTab: .constant(.home))
    }
}
