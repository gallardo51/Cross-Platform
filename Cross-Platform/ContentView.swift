//
//  ContentView.swift
//  Cross-Platform
//
//  Created by Александр Соболев on 19.05.2024.
//

import SwiftUI

struct ContentView: View {
#if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
#endif
    
    @ViewBuilder
    var body: some View {
        NavigationView {
#if os(iOS)
            if horizontalSizeClass == .compact {
                TabBarView()
            } else {
                SideBarView()
            }
#else
            SideBarView()
#endif
        }
    }
}

#Preview {
    ContentView()
}
